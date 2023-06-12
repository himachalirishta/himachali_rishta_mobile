import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/features/authentication/login/models/city_model.dart';
import 'package:himachali_rishta/features/authentication/login/models/country_model.dart';
import 'package:himachali_rishta/features/authentication/login/models/registration_step_2_request.dart';
import 'package:himachali_rishta/features/authentication/login/models/state_model.dart';
import 'package:himachali_rishta/features/authentication/login/ui/UploadPhotoScreen.dart';
import 'package:http/http.dart' as http;

class SubmitInformation2GetController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController ftController = TextEditingController();
  TextEditingController inchController = TextEditingController();
  TextEditingController livingCountryController = TextEditingController();
  TextEditingController livingStateController = TextEditingController();
  TextEditingController livingCityController = TextEditingController();
  TextEditingController homeTownController = TextEditingController();
  TextEditingController birthPlaceController = TextEditingController();
  TextEditingController birthTimeController = TextEditingController();
  late AnimationController animationController;
  RxList<String> occupationType =
      ['Select Occupation Type', 'Private', 'Government', 'Entrepreneur'].obs;
  RxString selectedOccupationType = 'Select Occupation Type'.obs;

  RxList<String> education = [
    'Select Education',
    '10',
    '12',
    'Graduate',
    'Post Graduate',
    'Ph.D.'
  ].obs;
  RxString selectedEducation = 'Select Education'.obs;

  RxList<String> country = ['India'].obs;
  RxString selectedCountry = 'India'.obs;

  RxList<String> state = ['Himachal Pradesh'].obs;
  RxString selectedState = 'Himachal Pradesh'.obs;

  RxList<String> city = ['Shimla'].obs;
  RxString selectedCity = 'Shimla'.obs;

  RxMap<int, RxList<String>> selectedOption = <int, RxList<String>>{}.obs;
  RxInt selectedOptionIndex = 0.obs;

  List<CountryModel> allCountries = [];
  List<StateModel> allStates = [];

  @override
  void onInit() {
    loadCountries().then((value) {
      loadStates().then((value) {
        loadCities();
      });
    });

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    selectedOption.value = {
      0: <String>[].obs,
      1: occupationType,
      2: education,
      3: country,
      4: state,
      5: city,
    };
    super.onInit();
  }

  Future<void> loadCountries() async {
    var request = http.Request(
        'GET', Uri.parse('https://devmatri.rishtaguru.com/api/country'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      List<CountryModel> countryModel =
          countryModelFromJson(await response.stream.bytesToString());
      country.clear();
      country.value = countryModel.map((e) => e.name ?? '').toList();
      selectedCountry.value = country.first;
      allCountries = countryModel;
    } else {
      throw response.reasonPhrase.toString();
    }
  }

  Future<void> loadStates() async {
    int indexWhere = allCountries.indexWhere((element) =>
        element.name.toString().toLowerCase() ==
        selectedCountry.value.toLowerCase());
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://devmatri.rishtaguru.com/api/state?id=${allCountries[indexWhere].id}}'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      List<StateModel> stateModel =
          stateModelFromJson(await response.stream.bytesToString());

      state.clear();

      state.value = stateModel.map((e) => e.name ?? '').toList();
      selectedState.value = state.first;
      allStates = stateModel;
    } else {
      throw response.reasonPhrase.toString();
    }
  }

  Future<void> loadCities() async {
    int indexWhere = allStates.indexWhere((element) =>
        element.name.toString().toLowerCase() ==
        selectedState.value.toLowerCase());
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://devmatri.rishtaguru.com/api/city?id=${allStates[indexWhere].id}}'));
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      List<CityModel> cityModel =
          cityModelFromJson(await response.stream.bytesToString());
      city.clear();
      city.value = cityModel.map((e) => e.name ?? '').toList();
      selectedCity.value = city.first;
    } else {
      throw response.reasonPhrase.toString();
    }
  }

  Future<void> submitSecondStepRegistration(String accessToken) async {
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    };
    RegistrationStep2Request registrationStep2Request =
        RegistrationStep2Request(
            height: "${ftController.text}ft  ${inchController.text}in",
            occupationType: selectedOccupationType.value,
            education: selectedEducation.value,
            livingCountry: selectedCountry.value,
            livingState: selectedState.value,
            livingCity: selectedCity.value,
            homeTown: homeTownController.text,
            birthPlace: birthPlaceController.text,
            birthTime: birthTimeController.text);
    var request = http.Request('POST',
        Uri.parse('https://devmatri.rishtaguru.com/api/register/step/2'));
    request.body = json.encode(registrationStep2Request.toJson());
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      RegistrationStep2Response registrationStep2Response =
          registrationStep2ResponseFromJson(
              await response.stream.bytesToString());
      Get.snackbar("Success", registrationStep2Response.message,
          backgroundColor: Colors.green, colorText: Colors.white);
      Get.to(() => UploadPhotoScreen(accessToken: accessToken));
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

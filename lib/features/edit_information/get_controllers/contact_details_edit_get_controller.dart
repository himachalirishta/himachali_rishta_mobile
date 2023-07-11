import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/features/authentication/login/models/city_model.dart';
import 'package:himachali_rishta/features/authentication/login/models/country_model.dart';
import 'package:himachali_rishta/features/authentication/login/models/state_model.dart';
import 'package:himachali_rishta/features/edit_information/models/contact_details_request.dart';
import 'package:http/http.dart' as http;

import '../../authentication/login/models/login_request.dart';
import '../../authentication/login/models/login_response.dart';

class ContactDetailsEditGetController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController mobileNoController = TextEditingController();
  TextEditingController altNoController = TextEditingController();
  TextEditingController whatsappNoController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController homeTownController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController livingCountryController = TextEditingController();
  TextEditingController livingStateController = TextEditingController();
  TextEditingController livingCityController = TextEditingController();

  RxList<String> country = <String>[
    CountryModel.fromJson(
            {"id": 1, "sortname": "AF", "name": "Afghanistan", "phonecode": 93})
        .name
        .toString()
  ].obs;
  RxString selectedCountry = CountryModel.fromJson(
          {"id": 1, "sortname": "AF", "name": "Afghanistan", "phonecode": 93})
      .name
      .toString()
      .obs;

  List<CountryModel> allCountries = <CountryModel>[
    CountryModel.fromJson(
        {"id": 1, "sortname": "AF", "name": "Afghanistan", "phonecode": 93})
  ];
  CountryModel selectedCountryModel = CountryModel.fromJson(
      {"id": 1, "sortname": "AF", "name": "Afghanistan", "phonecode": 93});

  RxList<String> state = <String>[
    StateModel.fromJson({"id": 4077, "name": "'Adan", "country_id": 243}).name
  ].obs;
  RxString selectedState =
      StateModel.fromJson({"id": 4077, "name": "'Adan", "country_id": 243})
          .name
          .obs;

  List<StateModel> allStates = <StateModel>[
    StateModel.fromJson({"id": 4077, "name": "'Adan", "country_id": 243})
  ];
  StateModel selectedStateModel =
      StateModel.fromJson({"id": 4077, "name": "'Adan", "country_id": 243});

  RxList<String> city = <String>[
    CityModel.fromJson({"id": 1, "name": "Bombuflat", "state_id": 1})
        .name
        .toString()
  ].obs;
  RxString selectedCity =
      CityModel.fromJson({"id": 1, "name": "Bombuflat", "state_id": 1})
          .name
          .toString()
          .obs;

  RxList<String> livingCountry = <String>[].obs;
  RxString selectedLivingCountry = "".obs;

  List<CountryModel> allLivingCountries = <CountryModel>[
    CountryModel.fromJson(
        {"id": 1, "sortname": "AF", "name": "Afghanistan", "phonecode": 93})
  ];
  CountryModel selectedLivingCountryModel = CountryModel.fromJson(
      {"id": 1, "sortname": "AF", "name": "Afghanistan", "phonecode": 93});

  RxList<String> livingState = <String>[].obs;
  RxString selectedLivingState = "".obs;

  List<StateModel> allLivingStates = <StateModel>[
    StateModel.fromJson({"id": 4077, "name": "'Adan", "country_id": 243})
  ];

  StateModel selectedLivingStateModel =
      StateModel.fromJson({"id": 4077, "name": "'Adan", "country_id": 243});

  RxList<String> livingCity = <String>[].obs;
  RxString selectedLivingCity = "".obs;

  RxMap<int, RxList<String>> selectedOption = <int, RxList<String>>{}.obs;
  RxInt selectedOptionIndex = 0.obs;

  late AnimationController animationController;

  @override
  void onInit() {
    loadCountries();
    loadLivingCountries();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    selectedOption.value = {
      0: <String>[].obs,
      1: country,
      2: state,
      3: city,
      4: livingCountry,
      5: livingState,
      6: livingCity,
    };
    super.onInit();
  }

  Future<void> submitContactDetails() async {
    LoginRequest loginRequest =
        LoginRequest(phone: FirebaseAuth.instance.currentUser!.phoneNumber!);
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST', Uri.parse('https://devmatri.rishtaguru.com/api/auth/login'));
    request.body = json.encode(loginRequest.toJson());
    request.headers.addAll(headers);

    http.StreamedResponse responseForLogin = await request.send();

    if (responseForLogin.statusCode == 200) {
      LoginResponse loginResponse = LoginResponse.fromJson(
          json.decode(await responseForLogin.stream.bytesToString()));

      var headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${loginResponse.accessToken}'
      };
      var request = http.Request(
          'POST',
          Uri.parse(
              'https://devmatri.rishtaguru.com/api/edit/contact-details'));

      ContactDetailsRequest assetsAndPropertiesRequest = ContactDetailsRequest(
          mobileNo: mobileNoController.text,
          altNo: altNoController.text,
          whatsappNo: whatsappNoController.text,
          emailAddress: emailAddressController.text,
          hometown: homeTownController.text,
          country: countryController.text,
          state: stateController.text,
          city: cityController.text,
          livingCountry: livingCountryController.text,
          livingState: livingStateController.text,
          livingCity: livingCityController.text);

      request.body = json.encode(assetsAndPropertiesRequest.toJson());
      request.headers.addAll(headers);

      http.StreamedResponse responseForEducationOccupation =
          await request.send();

      if (responseForEducationOccupation.statusCode == 200) {
        ContactDetailsResponse assetsAndPropertiesResponse =
            ContactDetailsResponse.fromJson(json.decode(
                await responseForEducationOccupation.stream.bytesToString()));
        Get.back();
        Get.snackbar('Message', assetsAndPropertiesResponse.message,
            backgroundColor: Colors.green, colorText: Colors.white);
      } else {
        throw Exception(responseForEducationOccupation.reasonPhrase);
      }
    } else {
      throw Exception(responseForLogin.reasonPhrase);
    }
  }

  Future<void> loadCountries() async {
    var request = http.Request(
        'GET', Uri.parse('https://devmatri.rishtaguru.com/api/country'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      List<CountryModel> countryModel =
          countryModelFromJson(await response.stream.bytesToString());
      country.clear();
      allCountries.clear();
      country.value = countryModel.map((e) => e.name.toString()).toList();
      allCountries = List.from(countryModel);
      selectedCountry.value = country.first;
      selectedCountryModel = allCountries.first;
      countryController.text = selectedCountryModel.name.toString();
      loadStates();
    } else {
      print(response.reasonPhrase);
    }
  }

  Future<void> loadStates() async {
    print("Load States called");
    print(selectedCountryModel.id);
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://devmatri.rishtaguru.com/api/state?id=${selectedCountryModel.id}'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      List<StateModel> stateModel =
          stateModelFromJson(await response.stream.bytesToString());
      state.clear();
      allStates.clear();
      state.value = stateModel.map((e) => e.name.toString()).toList();
      selectedState.value = state.first;
      allStates = List.from(stateModel);
      selectedStateModel = allStates.first;
      stateController.text = selectedStateModel.name.toString();
      loadCities();
    } else {
      print(response.reasonPhrase);
    }
  }

  Future<void> loadCities() async {
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://devmatri.rishtaguru.com/api/city?id=${selectedStateModel.id}'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      List<CityModel> cityModels =
          cityModelFromJson(await response.stream.bytesToString());
      city.clear();
      city.value = cityModels.map((e) => e.name.toString()).toList();
      selectedCity.value = city.first;
      cityController.text = selectedCity.value;
    } else {
      print(response.reasonPhrase);
    }
  }

  Future<void> loadLivingCountries() async {
    var request = http.Request(
        'GET', Uri.parse('https://devmatri.rishtaguru.com/api/country'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      List<CountryModel> countryModel =
          countryModelFromJson(await response.stream.bytesToString());
      livingCountry.clear();
      allLivingCountries.clear();
      livingCountry.value = countryModel.map((e) => e.name.toString()).toList();
      allLivingCountries = countryModel;
      selectedLivingCountry.value = livingCountry.first;
      selectedLivingCountryModel = allLivingCountries.first;
      livingCountryController.text = selectedLivingCountryModel.name.toString();
      loadLivingStates();
    } else {
      print(response.reasonPhrase);
    }
  }

  Future<void> loadLivingStates() async {
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://devmatri.rishtaguru.com/api/state?id=${selectedLivingCountryModel.id}}'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
      List<StateModel> stateModel =
          stateModelFromJson(await response.stream.bytesToString());
      livingState.clear();
      allLivingStates.clear();
      livingState.value = stateModel.map((e) => e.name.toString()).toList();
      selectedLivingState.value = livingState.first;
      allLivingStates = stateModel;
      selectedLivingStateModel = allLivingStates.first;
      livingStateController.text = selectedLivingStateModel.name.toString();
      loadLivingCities();
    } else {
      print(response.reasonPhrase);
    }
  }

  Future<void> loadLivingCities() async {
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://devmatri.rishtaguru.com/api/city?id=${selectedLivingStateModel.id}'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
      List<CityModel> cityModels =
          cityModelFromJson(await response.stream.bytesToString());
      livingCity.clear();
      livingCity.value = cityModels.map((e) => e.name.toString()).toList();
      selectedLivingCity.value = livingCity.first;
      livingCityController.text = selectedLivingCity.value;
    } else {
      print(response.reasonPhrase);
    }
  }
}

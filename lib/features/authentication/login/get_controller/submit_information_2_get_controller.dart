import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/features/authentication/login/models/city_model.dart';
import 'package:himachali_rishta/features/authentication/login/models/country_model.dart';
import 'package:himachali_rishta/features/authentication/login/models/state_model.dart';
import 'package:http/http.dart' as http;

class SubmitInformation2GetController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController heightController = TextEditingController();
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

  @override
  void onInit() {
    loadCountries();
    loadStates();
    loadCities();
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
        'GET', Uri.parse('https://devmatri.rishtaguru.com/api/state'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print("Response received");
      List<CountryModel> countryModel =
          countryModelFromJson(await response.stream.bytesToString());
      countryModel.remove((value) => countryModel.indexOf(value) >= 50);
      print("Length: ${countryModel.length}");
      country.value = countryModel.map((e) => e.name ?? '').toList();
      selectedCountry.value = country.first;
    } else {
      throw response.reasonPhrase.toString();
    }
  }

  Future<void> loadStates() async {
    var request = http.Request(
        'GET', Uri.parse('https://devmatri.rishtaguru.com/api/state'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      List<StateModel> stateModel =
          stateModelFromJson(await response.stream.bytesToString());

      stateModel.remove((value) => stateModel.indexOf(value) >= 50);

      state.value = stateModel.map((e) => e.name ?? '').toList();
      selectedState.value = state.first;
    } else {
      print(response.reasonPhrase);
    }
  }

  Future<void> loadCities() async {
    var request = http.Request(
        'GET', Uri.parse('https://devmatri.rishtaguru.com/api/city'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      List<CityModel> cityModel =
          cityModelFromJson(await response.stream.bytesToString());
      cityModel.remove((value) => cityModel.indexOf(value) >= 50);
      city.value = cityModel.map((e) => e.name ?? '').toList();
      selectedCity.value = city.first;
    } else {
      print(response.reasonPhrase);
    }
  }
}

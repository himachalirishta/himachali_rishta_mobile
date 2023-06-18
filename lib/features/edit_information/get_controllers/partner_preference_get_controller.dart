import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/features/authentication/login/models/country_model.dart';
import 'package:himachali_rishta/features/authentication/login/models/religion_model.dart';
import 'package:himachali_rishta/features/authentication/login/models/state_model.dart';
import 'package:http/http.dart' as http;

import '../../authentication/login/models/caste_model.dart';
import '../../authentication/login/models/city_model.dart';

class PartnerPreferenceGetController extends GetxController
    with GetSingleTickerProviderStateMixin {
  /*{
   "age" : "22",
   "religion" : "1",
   "caste" : "3",
   "height" : "6",
   "looking_for" : "Female",
   "education" : "Degree",
   "employment_type" : "Job",
   "occupation" : "10:00AM",
   "annual_income" : "10:00AM",
   "manglik" : "10:00AM",
   "living_country" : "10:00AM",
   "living_state" : "10:00AM",
   "living_city" : "10:00AM",
   "home_town" : "10:00AM"
}*/
  TextEditingController ageController = TextEditingController();
  TextEditingController religionController = TextEditingController();
  TextEditingController casteController = TextEditingController();
  TextEditingController ftController = TextEditingController();
  TextEditingController inController = TextEditingController();
  TextEditingController lookingForController = TextEditingController();
  TextEditingController educationController = TextEditingController();
  TextEditingController employmentTypeController = TextEditingController();
  TextEditingController occupationController = TextEditingController();
  TextEditingController annualIncomeController = TextEditingController();
  TextEditingController manglikController = TextEditingController();
  TextEditingController livingCountryController = TextEditingController();
  TextEditingController livingStateController = TextEditingController();
  TextEditingController livingCityController = TextEditingController();
  TextEditingController homeTownController = TextEditingController();

  //religion
  RxList<String> religion = <String>[
    'Yes',
    'No',
  ].obs;
  RxString selectedReligion = 'Yes'.obs;

  List<ReligionModel> allReligions = [];
  ReligionModel selectedReligionModel = ReligionModel.empty();

  //caste
  RxList<String> caste = <String>[
    'Yes',
    'No',
  ].obs;
  RxString selectedCaste = 'Yes'.obs;

  //looking for
  RxList<String> lookingFor = <String>[
    'Male',
    'Female',
  ].obs;
  RxString selectedLookingFor = 'Male'.obs;

  //education
  RxList<String> education = <String>[
    '10th',
    '12th',
    'Diploma',
    'Bachelors',
    'Masters',
    'Doctorate',
  ].obs;
  RxString selectedEducation = '10th'.obs;

  RxList<String> employmentType = <String>[
    'Private',
    'Government',
    'Business',
    'Self Employed',
    'Not Working',
    'Studying',
    'Other'
  ].obs;

  RxString selectedEmploymentType = 'Private'.obs;

  RxList<String> annualIncome = <String>[
    'Less than 1 Lakh',
    '1-2 Lakh',
    '2-3 Lakh',
    '3-4 Lakh',
    '4-5 Lakh',
    '5-6 Lakh',
    '6-7 Lakh',
    '7-8 Lakh',
    '8-9 Lakh',
    '9-10 Lakh',
    'Above 10 Lakh',
  ].obs;

  RxString selectedAnnualIncome = 'Less than 1 Lakh'.obs;

  //manglik
  RxList<String> manglik = <String>[
    'Yes',
    'No',
  ].obs;
  RxString selectedManglik = 'Yes'.obs;

  //living country
  RxList<String> livingCountry = <String>[
    'Yes',
    'No',
  ].obs;
  RxString selectedLivingCountry = 'Yes'.obs;

  List<CountryModel> allCountries = [];
  CountryModel selectedCountryModel = CountryModel.empty();

  //living state
  RxList<String> livingState = <String>[
    'Yes',
    'No',
  ].obs;
  RxString selectedLivingState = 'Yes'.obs;

  List<StateModel> allStates = [];
  StateModel selectedStateModel = StateModel.empty();

  //living city
  RxList<String> livingCity = <String>[
    'Yes',
    'No',
  ].obs;
  RxString selectedLivingCity = 'Yes'.obs;

  RxMap<int, RxList<String>> selectedOption = <int, RxList<String>>{}.obs;
  RxInt selectedOptionIndex = 0.obs;

  late AnimationController animationController;

  @override
  void onInit() {
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    selectedOption.value = {
      0: <String>[].obs,
      1: religion,
      2: caste,
      3: lookingFor,
      4: education,
      5: employmentType,
      6: annualIncome,
      7: manglik,
      8: livingCountry,
      9: livingState,
      10: livingCity,
    };

    loadCountries().then((value) {
      loadLivingStates().then((value) {
        loadLivingCities();
      });
    });

    getReligions().then((value) {
      getCastes();
    });

    super.onInit();
  }

  void submitPersonalPreference() {}

  Future<void> loadCountries() async {
    var request = http.Request(
        'GET', Uri.parse('https://devmatri.rishtaguru.com/api/country'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      List<CountryModel> countryModel =
          countryModelFromJson(await response.stream.bytesToString());
      livingCountry.clear();
      allCountries.clear();
      livingCountry.value = countryModel.map((e) => e.name.toString()).toList();
      allCountries = List.from(countryModel);
      selectedLivingCountry.value = livingCountry.first;
      selectedCountryModel = allCountries.first;
      livingCountryController.text = selectedCountryModel.name.toString();
      loadLivingStates();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  Future<void> loadLivingStates() async {
    int indexWhere = allCountries.indexWhere((element) =>
        element.name!.toLowerCase().toString() ==
        selectedLivingCountry.value.toLowerCase().toString());
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://devmatri.rishtaguru.com/api/state?id=${allCountries[indexWhere].id}}'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      List<StateModel> stateModel =
          stateModelFromJson(await response.stream.bytesToString());
      livingState.clear();
      allStates.clear();
      livingState.value = stateModel.map((e) => e.name.toString()).toList();
      selectedLivingState.value = livingState.first;
      allStates = List.from(stateModel);
      selectedStateModel = allStates.first;
      livingStateController.text = selectedStateModel.name.toString();
      loadLivingCities();
    } else {}
  }

  Future<void> loadLivingCities() async {
    int indexWhere = allStates.indexWhere((element) =>
        element.name!.toLowerCase().toString() ==
        selectedLivingState.value.toLowerCase().toString());
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://devmatri.rishtaguru.com/api/city?id=${allStates[indexWhere].id}'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      List<CityModel> cityModels =
          cityModelFromJson(await response.stream.bytesToString());
      livingCity.clear();
      livingCity.value = cityModels.map((e) => e.name.toString()).toList();
      selectedLivingCity.value = livingCity.first;
      livingCityController.text = selectedLivingCity.value;
    } else {}
  }

  Future<void> getReligions() async {
    var request = http.Request(
        'GET', Uri.parse('https://devmatri.rishtaguru.com/api/religion'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      List<ReligionModel> religions =
          religionModelFromJson(await response.stream.bytesToString());
      religion.value = religions.map((e) => e.name).toList().obs;
      selectedReligion.value = religion.first;
      allReligions = religions;
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  Future<void> getCastes() async {
    int indexWhere = allReligions.indexWhere((element) =>
        element.name.toLowerCase() == selectedReligion.value.toLowerCase());
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://devmatri.rishtaguru.com/api/cast?id=${allReligions[indexWhere].id}'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      List<CasteModel> castes =
          casteModelFromJson(await response.stream.bytesToString());
      caste.clear();
      caste.value = castes.map((e) => e.name).toList().obs;
      selectedCaste.value = caste.first;
    } else {}
  }
}

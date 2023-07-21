import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/features/authentication/login/models/login_request.dart';
import 'package:himachali_rishta/features/authentication/login/models/login_response.dart';
import 'package:himachali_rishta/features/edit_information/models/basic_edit_request.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/app_constants.dart';
import '../../authentication/login/models/caste_model.dart';
import '../../authentication/login/models/religion_model.dart';

class BasicInformationGetController extends GetxController
    with GetSingleTickerProviderStateMixin {
//name, marital status, religion, caste, ft, in, date of birth, number of children, children living with
  TextEditingController nameController = TextEditingController();
  TextEditingController maritalStatusController = TextEditingController();
  TextEditingController religionController = TextEditingController();
  TextEditingController casteController = TextEditingController();
  TextEditingController ftController = TextEditingController();
  TextEditingController inchController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController numberOfChildrenController = TextEditingController();
  TextEditingController childrenLivingWithController = TextEditingController();

  late AnimationController animationController;

  RxList<String> maritalStatus = [
    'Marital Status',
    'Single',
    'Married',
    'Divorced',
    'Widowed',
    'Separated',
    'Other'
  ].obs;
  RxString selectedMaritalStatus = 'Single'.obs;

  RxList<String> religion =
      ['Select Religion', 'Hindu', 'Muslim', 'Sikh', 'Christian'].obs;
  RxString selectedReligion = 'Select Religion'.obs;
  RxList<String> caste =
      ['Select Caste', 'Brahmin', 'Rajput', 'Jat', 'Kayastha'].obs;
  RxString selectedCaste = 'Select Caste'.obs;

  RxMap<int, RxList<String>> selectedOption = <int, RxList<String>>{}.obs;
  RxInt selectedOptionIndex = 0.obs;

  List<ReligionModel> allReligions = [];

  Rx<DateTime> selectedDateOfBirth = DateTime.now().obs;

  @override
  void onInit() {
    getReligions().then((value) {
      getCastes();
    });
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    selectedOption.value = {
      0: <String>[].obs,
      1: maritalStatus,
      2: religion,
      3: caste,
    };
    super.onInit();
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
    } else {}
  }

  Future<void> submitBasicInformation() async {
    BasicEditRequest basicEditRequest = BasicEditRequest(
        name: nameController.text.trim(),
        maritalStatus: selectedMaritalStatus.value,
        religion: selectedReligion.value,
        cast: selectedCaste.value,
        height: '${ftController.text.trim()}ft ${inchController.text.trim()}in',
        dob: selectedDateOfBirth.value,
        numberOfChilds: numberOfChildrenController.text.trim(),
        childrenLivingWith: childrenLivingWithController.text.trim());
    var prefs = await SharedPreferences.getInstance();
    LoginResponse response = LoginResponse.fromJson(
        jsonDecode(prefs.getString(AppConstants.loginResponse)!));
    LoginRequest loginRequest = LoginRequest(
        phone: response.userdata!.countryCode! + response.userdata!.phone!);
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST', Uri.parse('https://devmatri.rishtaguru.com/api/auth/login'));
    request.body = json.encode(loginRequest.toJson());
    request.headers.addAll(headers);

    http.StreamedResponse responseFromLogin = await request.send();

    if (responseFromLogin.statusCode == 200) {
      LoginResponse loginResponse =
          loginResponseFromJson(await responseFromLogin.stream.bytesToString());
      var headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${loginResponse.accessToken}'
      };
      var request = http.Request(
          'POST', Uri.parse('https://devmatri.rishtaguru.com/api/edit/basic'));
      request.body = json.encode(basicEditRequest.toJson());
      request.headers.addAll(headers);

      http.StreamedResponse responseFromBasicEdit = await request.send();

      if (responseFromBasicEdit.statusCode == 200) {
        Get.back();
        BasicEditRequestResponse basicEditRequestResponse =
            basicEditRequestResponseFromJson(
                await responseFromBasicEdit.stream.bytesToString());
        Get.snackbar('Success', basicEditRequestResponse.message,
            backgroundColor: Colors.green, colorText: Colors.white);
      } else {
        throw Exception(responseFromBasicEdit.reasonPhrase);
      }
    } else {
      throw Exception(responseFromLogin.reasonPhrase);
    }
  }
}

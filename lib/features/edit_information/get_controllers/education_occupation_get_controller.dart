import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/features/authentication/login/models/login_request.dart';
import 'package:himachali_rishta/features/authentication/login/models/login_response.dart';
import 'package:himachali_rishta/features/edit_information/models/education_occupation_request.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/app_constants.dart';

class EducationOccupationGetController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController educationController = TextEditingController();
  TextEditingController educationDetailsController = TextEditingController();
  TextEditingController employmentTypeController = TextEditingController();
  TextEditingController occupationController = TextEditingController();
  TextEditingController occupationDetailsController = TextEditingController();
  TextEditingController annualIncomeController = TextEditingController();

  late AnimationController animationController;
  RxMap<int, RxList<String>> selectedOption = <int, RxList<String>>{}.obs;
  RxInt selectedOptionIndex = 0.obs;

  RxList<String> education = <String>[
    '10th',
    '12th',
    'Diploma',
    'Bachelors',
    'Masters',
    'Doctorate',
    'Other'
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

  @override
  void onInit() {
    selectedOption.value = {
      0: <String>[].obs,
      1: education,
      2: employmentType,
      3: annualIncome,
    };
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    super.onInit();
  }

  Future<void> submitEducationOccupation() async {
    var prefs = await SharedPreferences.getInstance();
    LoginResponse response = LoginResponse.fromJson(
        jsonDecode(prefs.getString(AppConstants.loginResponse)!));
    LoginRequest loginRequest = LoginRequest(
        phone: response.userdata!.countryCode! + response.userdata!.phone!);
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST', Uri.parse('${AppConstants.baseUrl}auth/login'));
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
              '${AppConstants.baseUrl}edit/education-occupation'));

      EducationOccupationRequest educationOccupationRequest =
          EducationOccupationRequest(
              education: educationController.text,
              educationDetails: educationDetailsController.text,
              empType: employmentTypeController.text,
              occupation: occupationController.text,
              occupationDetail: occupationDetailsController.text,
              annualIncome: annualIncomeController.text);
      request.body = json.encode(educationOccupationRequest.toJson());
      request.headers.addAll(headers);

      http.StreamedResponse responseForEducationOccupation =
          await request.send();

      if (responseForEducationOccupation.statusCode == 200) {
        EducationOccupationResponse educationOccupationResponse =
            EducationOccupationResponse.fromJson(json.decode(
                await responseForEducationOccupation.stream.bytesToString()));
        Get.back();
        Get.snackbar('Message', educationOccupationResponse.message,
            backgroundColor: Colors.green, colorText: Colors.white);
      } else {
        throw Exception(responseForEducationOccupation.reasonPhrase);
      }
    } else {
      throw Exception(responseForLogin.reasonPhrase);
    }
  }
}

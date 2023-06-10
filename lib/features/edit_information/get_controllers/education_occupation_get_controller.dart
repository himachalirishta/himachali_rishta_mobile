import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/features/authentication/login/models/login_request.dart';
import 'package:himachali_rishta/features/authentication/login/models/login_response.dart';
import 'package:himachali_rishta/features/edit_information/models/education_occupation_request.dart';
import 'package:http/http.dart' as http;

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
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2Rldm1hdHJpLnJpc2h0YWd1cnUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNjg1NjE4NzA4LCJleHAiOjE2ODgyMTA3MDgsIm5iZiI6MTY4NTYxODcwOCwianRpIjoiVEZBTnRCUTcxSmo1U3hCRSIsInN1YiI6IjExMTMxOSIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.jBQlB5KMV_MYVMiTZjWclPscxqF2gFtSocuSHVLkeBM'
      };
      var request = http.Request(
          'POST',
          Uri.parse(
              'https://devmatri.rishtaguru.com/api/edit/education-occupation'));
      request.body = json.encode({
        "education": "Diploma",
        "education_details": "Diploma in ME",
        "emp_type": "Private",
        "occupation": "abc",
        "occupation_detail": "XYZ Occ Details",
        "annual_income": "4-5 LPA"
      });
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

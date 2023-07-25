import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/app_constants.dart';
import '../../authentication/login/models/login_request.dart';
import '../../authentication/login/models/login_response.dart';
import '../models/family_details_request.dart';

class FamilyDetailsGetController extends GetxController
    with GetSingleTickerProviderStateMixin {
  /*"father_occoupatin" : "Private Job",
    "maother_occupation" : "Housewife",
    "family_type" : "Middle",
    "elder_brothers" : "1",
    "younger_brothers" : "0",
    "married_brothers" : "0",
    "elder_sisters":"0",
    "younger_sisters" : "0",
    "marired_sisters" : "0"*/

  TextEditingController fatherOccupationController = TextEditingController();
  TextEditingController motherOccupationController = TextEditingController();
  TextEditingController familyTypeController = TextEditingController();
  TextEditingController elderBrothersController = TextEditingController();
  TextEditingController youngerBrothersController = TextEditingController();
  TextEditingController marriedBrothersController = TextEditingController();
  TextEditingController elderSistersController = TextEditingController();
  TextEditingController youngerSistersController = TextEditingController();
  TextEditingController marriedSistersController = TextEditingController();

  RxList<String> familyType = <String>[
    'Upper',
    'Middle',
    'Lower',
  ].obs;
  RxString selectedFamilyType = 'Upper'.obs;

  RxList<String> elderBrothers = <String>[
    '0',
    '1',
    '2',
    'More than 2',
  ].obs;
  RxString selectedElderBrothers = '0'.obs;

  RxMap<int, RxList<String>> selectedOption = <int, RxList<String>>{}.obs;
  RxInt selectedOptionIndex = 0.obs;
  late AnimationController animationController;

  @override
  void onInit() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    selectedOption.value = {
      0: <String>[].obs,
      1: familyType,
      2: elderBrothers,
    };
    super.onInit();
  }

  Future<void> submitFamilyDetails() async {
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
      var request = http.Request('POST',
          Uri.parse('${AppConstants.baseUrl}edit/family-details'));

      FamilyDetailsRequest educationOccupationRequest = FamilyDetailsRequest(
        fatherOccoupatin: fatherOccupationController.text,
        maotherOccupation: motherOccupationController.text,
        familyType: familyTypeController.text,
        elderBrothers: elderBrothersController.text,
        youngerBrothers: youngerBrothersController.text,
        marriedBrothers: marriedBrothersController.text,
        elderSisters: elderSistersController.text,
        youngerSisters: youngerSistersController.text,
        mariredSisters: marriedSistersController.text,
      );
      request.body = json.encode(educationOccupationRequest.toJson());
      request.headers.addAll(headers);

      http.StreamedResponse responseForEducationOccupation =
          await request.send();

      if (responseForEducationOccupation.statusCode == 200) {
        FamilyDetailsResponse educationOccupationResponse =
            FamilyDetailsResponse.fromJson(json.decode(
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

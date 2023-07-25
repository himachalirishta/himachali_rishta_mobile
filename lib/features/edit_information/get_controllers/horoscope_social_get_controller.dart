import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/features/edit_information/models/horoscope_social_request.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/app_constants.dart';
import '../../authentication/login/models/login_request.dart';
import '../../authentication/login/models/login_response.dart';

class HoroscopeSocialGetController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController manglikController = TextEditingController();
  TextEditingController birthPlaceController = TextEditingController();
  TextEditingController birthTimeController = TextEditingController();
  TextEditingController patSubcastController = TextEditingController();
  TextEditingController maternalSubcastController = TextEditingController();
  TextEditingController gotraController = TextEditingController();
  TextEditingController rashiController = TextEditingController();
  TextEditingController motherTongueController = TextEditingController();

  RxList<String> manglik = <String>[
    'Yes',
    'No',
    'Don\'t Know',
  ].obs;
  RxString selectedManglik = 'Yes'.obs;

  RxMap<int, RxList<String>> selectedOption = <int, RxList<String>>{}.obs;
  RxInt selectedOptionIndex = 0.obs;
  late AnimationController animationController;

  @override
  void onInit() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    selectedOption.value = {
      0: <String>[].obs,
      1: manglik,
    };
    super.onInit();
  }

  Future<void> submitHoroscopeSocial() async {
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
              '${AppConstants.baseUrl}edit/horoscope-social'));

      HoroscopeSocialRequest horoscopeSocialRequest = HoroscopeSocialRequest(
        manglik: manglikController.text,
        birthPlace: birthPlaceController.text,
        birthTime: birthTimeController.text,
        patSubcast: patSubcastController.text,
        maternalSubcast: maternalSubcastController.text,
        gotra: gotraController.text,
        rashi: rashiController.text,
        motherTongue: motherTongueController.text,
      );

      request.body = json.encode(horoscopeSocialRequest.toJson());
      request.headers.addAll(headers);

      http.StreamedResponse responseForEducationOccupation =
          await request.send();

      if (responseForEducationOccupation.statusCode == 200) {
        HoroscopeSocialResponse educationOccupationResponse =
            HoroscopeSocialResponse.fromJson(json.decode(
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

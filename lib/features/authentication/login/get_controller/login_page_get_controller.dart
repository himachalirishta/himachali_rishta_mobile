import 'dart:convert';

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/features/authentication/login/models/login_response.dart';
import 'package:himachali_rishta/features/authentication/login/models/phone_otp_request.dart';
import 'package:himachali_rishta/features/authentication/login/models/verify_phone_request.dart';
import 'package:himachali_rishta/features/authentication/login/ui/OtpScreen.dart';
import 'package:himachali_rishta/features/authentication/login/ui/SubmitInformationPage.dart';
import 'package:himachali_rishta/features/dashboard/ui/MainDashboardPage.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/app_constants.dart';

class LoginPageGetController extends GetxController {
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController phoneCodeController = TextEditingController();

  RxBool showLoader = false.obs;

  late Rx<Country> selectedCountry;

  Future<void> initiatePhoneVerification(BuildContext context) async {
    if (mobileNumberController.text.isEmpty) {
      return;
    }
    showLoader.value = true;

    var headers = {'Content-Type': 'application/json'};
    var request = http.Request('POST',
        Uri.parse('https://hr72.rishtaguru.com/api/register/Register2Factor'));

    PhoneOtpRequest phoneOtpRequest = PhoneOtpRequest(
        countrycode: "+${selectedCountry.value.phoneCode}",
        phone: mobileNumberController.text);
    request.body = json.encode(phoneOtpRequest.toJson());
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      PhoneOtpResponse phoneOtpResponse = PhoneOtpResponse.fromJson(
          jsonDecode(await response.stream.bytesToString()));
      Get.to(() => OtpScreen(
          phoneNumber:
              "+${selectedCountry.value.phoneCode}${mobileNumberController.text}",
          otpEntered: (otpEntered) async {
            var headers = {'Content-Type': 'application/json'};
            var request = http.Request(
                'POST',
                Uri.parse(
                    'https://hr72.rishtaguru.com/api/register/VerifyPhone'));
            VerifyPhoneRequest verifyPhoneRequest = VerifyPhoneRequest(
                countrycode: "+${selectedCountry.value.phoneCode}",
                phone: mobileNumberController.text,
                otp: otpEntered);
            request.body = json.encode(verifyPhoneRequest.toJson());
            request.headers.addAll(headers);

            http.StreamedResponse response = await request.send();

            if (response.statusCode == 200) {
              LoginResponse loginResponse = LoginResponse.fromJson(
                  jsonDecode(await response.stream.bytesToString()));

              if (loginResponse.userStatus) {
                SharedPreferences.getInstance().then((prefs) {
                  prefs.setString(
                      AppConstants.loginResponse, jsonEncode(loginResponse));
                  Get.offAll(() => MainDashboardPage(
                      accessToken: phoneOtpResponse.accessToken!));
                });
              } else {
                Get.offAll(
                    () => SubmitInformationPage(loginResponse: loginResponse));
              }
            } else {
              Get.snackbar('Error', response.reasonPhrase.toString(),
                  backgroundColor: Colors.red, colorText: Colors.white);
              throw response.reasonPhrase.toString();
            }
          }));
    } else {
      Get.snackbar('Error', response.reasonPhrase.toString(),
          backgroundColor: Colors.red, colorText: Colors.white);
      throw response.reasonPhrase.toString();
    }

    showLoader.value = false;
  }

  @override
  void onInit() {
    CountryService countryService = CountryService();
    selectedCountry = countryService.findByCode('IN')!.obs;
    checkIfAlreadyLoggedIn().then((value) {
      if (value != null) {
        Get.offAll(() => MainDashboardPage(accessToken: value.accessToken));
      }
    });
    super.onInit();
  }

  Future<LoginResponse?> checkIfAlreadyLoggedIn() async {
    LoginResponse? loginResponse;
    await SharedPreferences.getInstance().then((prefs) {
      if (prefs.containsKey(AppConstants.loginResponse)) {
        loginResponse = LoginResponse.fromJson(
            jsonDecode(prefs.getString(AppConstants.loginResponse)!));
      }
    });
    return loginResponse;
  }
}

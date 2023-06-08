import 'dart:convert';

import 'package:country_picker/country_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/features/authentication/login/models/login_request.dart';
import 'package:himachali_rishta/features/authentication/login/models/login_response.dart';
import 'package:himachali_rishta/features/authentication/login/models/register_phone_api_response.dart';
import 'package:himachali_rishta/features/authentication/login/ui/OtpScreen.dart';
import 'package:himachali_rishta/features/dashboard/ui/MainDashboardPage.dart';
import 'package:http/http.dart' as http;

import '../ui/SubmitInformationPage.dart';

class LoginPageGetController extends GetxController {
  TextEditingController mobileNumberController = TextEditingController();

  RxBool showLoader = false.obs;

  late Rx<Country> selectedCountry;

  Future<void> initiatePhoneVerification(BuildContext context) async {
    if (mobileNumberController.text.isEmpty) {
      return;
    }
    showLoader.value = true;
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber:
            "+${selectedCountry.value.phoneCode}${mobileNumberController.text}",
        verificationCompleted: (PhoneAuthCredential credential) async {
          initLoginApi().then((loginResponse) async {
            if (loginResponse.userdata.id != -1) {
              await FirebaseAuth.instance
                  .signInWithCredential(credential)
                  .then((value) {
                Get.to(() =>
                    MainDashboardPage(accessToken: loginResponse.accessToken));
              });
            } else {
              await FirebaseAuth.instance
                  .signInWithCredential(credential)
                  .then((value) {
                Get.to(() => SubmitInformationPage(
                    accessToken: loginResponse.accessToken));
              });
            }
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          Get.snackbar('Error', e.message.toString(),
              backgroundColor: Colors.red, colorText: Colors.white);
        },
        codeSent: (String verificationId, int? resendToken) {
          Get.to(() => OtpScreen(
              phoneNumber:
                  '+${selectedCountry.value.phoneCode}${mobileNumberController.text}',
              otpEntered: (otpEntered) async {
                PhoneAuthCredential credential = PhoneAuthProvider.credential(
                    verificationId: verificationId, smsCode: otpEntered);
                initLoginApi().then((loginResponse) async {
                  if (loginResponse.userdata.id != -1) {
                    await FirebaseAuth.instance
                        .signInWithCredential(credential)
                        .then((value) {
                      Get.to(() => MainDashboardPage(
                            accessToken: loginResponse.accessToken,
                          ));
                    });
                  } else {
                    initRegisterPhoneApi()
                        .then((registerPhoneApiResponse) async {
                      await FirebaseAuth.instance
                          .signInWithCredential(credential)
                          .then((value) {
                        Get.to(() => SubmitInformationPage(
                              accessToken: loginResponse.accessToken,
                            ));
                      });
                    });
                  }
                });
              }));
        },
        codeAutoRetrievalTimeout: (String verificationId) {});
    showLoader.value = false;
  }

  @override
  void onInit() {
    CountryService countryService = CountryService();
    selectedCountry = countryService.findByCode('IN')!.obs;
    if (FirebaseAuth.instance.currentUser != null) {
      getAccessToken().then((accessToken) {
        Get.offAll(() => MainDashboardPage(accessToken: accessToken));
      });
    }
    super.onInit();
  }

  Future<LoginResponse> initLoginApi() async {
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST', Uri.parse('https://devmatri.rishtaguru.com/api/auth/login'));
    request.body = json.encode(LoginRequest(
        phone:
            '+${selectedCountry.value.phoneCode}${mobileNumberController.text}'));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      String responseString = await response.stream.bytesToString();
      print("Response String: $responseString");
      LoginResponse loginResponse = loginResponseFromJson(responseString);
      return loginResponse;
    } else if (response.statusCode == 401) {
      LoginResponse loginResponse = LoginResponse.empty();
      return loginResponse;
    } else {
      Get.snackbar('Error', response.reasonPhrase.toString(),
          backgroundColor: Colors.red, colorText: Colors.white);
      throw response.reasonPhrase.toString();
    }
  }

  Future<RegisterPhoneNumberApiResponse> initRegisterPhoneApi() async {
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST', Uri.parse('https://devmatri.rishtaguru.com/api/auth/register'));
    request.body = json.encode({
      "phone":
          '+${selectedCountry.value.phoneCode}${mobileNumberController.text}',
      "otp": "3435"
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      RegisterPhoneNumberApiResponse registerPhoneNumberApiResponse =
          registerPhoneNumberApiResponseFromJson(
              await response.stream.bytesToString());
      return registerPhoneNumberApiResponse;
    } else {
      throw response.reasonPhrase.toString();
    }
  }

  Future<String> getAccessToken() async {
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST', Uri.parse('https://devmatri.rishtaguru.com/api/auth/login'));
    request.body = json.encode(
        LoginRequest(phone: FirebaseAuth.instance.currentUser!.phoneNumber!));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      String responseString = await response.stream.bytesToString();
      print("Response String: $responseString");
      LoginResponse loginResponse = loginResponseFromJson(responseString);
      return loginResponse.accessToken;
    } else {
      Get.snackbar('Error', response.reasonPhrase.toString(),
          backgroundColor: Colors.red, colorText: Colors.white);
      throw response.reasonPhrase.toString();
    }
  }
}

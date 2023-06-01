import 'dart:convert';

import 'package:country_picker/country_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/features/authentication/login/models/login_request.dart';
import 'package:himachali_rishta/features/authentication/login/models/login_response.dart';
import 'package:himachali_rishta/features/authentication/login/ui/OtpScreen.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

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
          await FirebaseAuth.instance
              .signInWithCredential(credential)
              .then((value) {
            Get.to(() => SubmitInformationPage());
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
                await FirebaseAuth.instance
                    .signInWithCredential(credential)
                    .then((value) {
                  initLoginApi().then((value) {
                    SharedPreferences.getInstance().then((prefs) {
                      prefs.setString('AccessToken', value.accessToken);
                    }).then((value) {
                      Get.to(() => SubmitInformationPage());
                    });
                  });
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
      Future.delayed(const Duration(milliseconds: 10), () {
        Get.offAll(() => SubmitInformationPage());
      });
    }
    super.onInit();
  }

  Future<LoginResponse> initLoginApi() async {
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST', Uri.parse('https://devmatri.rishtaguru.com/api/auth/login'));
    request.body = json.encode(LoginRequest(phone: '7668809743'));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      LoginResponse loginResponse =
          loginResponseFromJson(await response.stream.bytesToString());
      return loginResponse;
    } else {
      Get.snackbar('Error', response.reasonPhrase.toString(),
          backgroundColor: Colors.red, colorText: Colors.white);
      throw response.reasonPhrase.toString();
    }
  }
}

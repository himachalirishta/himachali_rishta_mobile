import 'package:country_picker/country_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ui/SubmitInformationPage.dart';

class LoginPageGetController extends GetxController {
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController otpController = TextEditingController();

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
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Enter OTP'),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        controller: otpController,
                        decoration: InputDecoration(
                          hintText: 'Enter OTP',
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                        onPressed: () async {
                          PhoneAuthCredential credential =
                              PhoneAuthProvider.credential(
                                  verificationId: verificationId,
                                  smsCode: otpController.text);
                          await FirebaseAuth.instance
                              .signInWithCredential(credential)
                              .then((value) {
                            Get.to(() => SubmitInformationPage());
                          });
                        },
                        child: Text('Submit'))
                  ],
                );
              });
        },
        codeAutoRetrievalTimeout: (String verificationId) {});
    showLoader.value = false;
  }

  @override
  void onInit() {
    CountryService countryService = CountryService();
    selectedCountry = countryService.findByCode('IN')!.obs;
    if (FirebaseAuth.instance.currentUser != null) {
      Future.delayed(Duration(milliseconds: 10), () {
        Get.offAll(() => SubmitInformationPage());
      });
    }
    super.onInit();
  }
}

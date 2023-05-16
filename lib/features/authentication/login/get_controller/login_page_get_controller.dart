import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ui/SubmitInformationPage.dart';

class LoginPageGetController extends GetxController {
  TextEditingController isdCodeController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  RxBool showLoader = false.obs;

  Future<void> initiatePhoneVerification(BuildContext context) async {
    if (isdCodeController.text.isEmpty || isdCodeController.text.isEmpty) {
      return;
    }
    showLoader.value = true;
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: isdCodeController.text + mobileNumberController.text,
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
    if (FirebaseAuth.instance.currentUser != null) {
      Future.delayed(Duration(milliseconds: 10), () {
        Get.offAll(() => SubmitInformationPage());
      });
    }
    super.onInit();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/features/authentication/login/ui/OtpScreen.dart';

class SplashPageGetController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void onInit() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    super.onInit();
    animationController.forward();
    Future.delayed(const Duration(seconds: 2), () {
      Get.offAll(() =>
          OtpScreen(phoneNumber: 'phoneNumber', otpEntered: (otpEntered) {}));
    });
  }
}

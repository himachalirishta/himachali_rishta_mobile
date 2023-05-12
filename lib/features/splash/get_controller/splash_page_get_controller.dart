import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../authentication/login/ui/LoginPage.dart';

class SplashPageGetController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void onInit() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    super.onInit();
    animationController.forward();
    Future.delayed(Duration(seconds: 2), () {
      Get.offAll(() => LoginPage());
    });
  }
}

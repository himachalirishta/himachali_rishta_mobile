import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/core/app_colors.dart';
import 'package:sizer/sizer.dart';

import '../get_controller/splash_page_get_controller.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);
  SplashPageGetController splashPageGetController =
      Get.put(SplashPageGetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: FadeTransition(
      opacity: splashPageGetController.animationController,
      child: CircleAvatar(
        radius: 25.w,
        backgroundColor: AppColors.primaryLight,
        child: Text(
          "Splash Page",
          style: TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
    )));
  }
}

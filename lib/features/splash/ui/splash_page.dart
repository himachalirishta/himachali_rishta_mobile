import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      child: Image.asset("assets/images/homepagelogo.jpg"),
    )));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/features/splash/ui/splash_page.dart';
import 'package:sizer/sizer.dart';

import 'core/app_colors.dart';
import 'main_get_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, _, __) {
      return GetX(
          init: MainGetController(),
          builder: (controller) {
            return GetMaterialApp(
              title: 'Flutter Demo',
              theme: controller.isDarkMode.value ? darkTheme : lightTheme,
              home: SplashPage(),
            );
          });
    });
  }

  ThemeData lightTheme = ThemeData(
    primarySwatch: AppColors.primaryLight,
    secondaryHeaderColor: AppColors.secondaryLight,
    textTheme: TextTheme(
      headline1: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryTextColorLight),
      headline2: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryTextColorLight),
      headline3: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryTextColorLight),
      headline4: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryTextColorLight),
      headline5: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryTextColorLight),
      headline6: TextStyle(
          fontSize: 10.0,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryTextColorLight),
      bodyText1: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
          color: AppColors.primaryTextColorLight),
      bodyText2: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          color: AppColors.primaryTextColorLight),
      subtitle1: TextStyle(
          fontSize: 10.0,
          fontWeight: FontWeight.normal,
          color: AppColors.primaryTextColorLight),
      subtitle2: TextStyle(
          fontSize: 8.0,
          fontWeight: FontWeight.normal,
          color: AppColors.primaryTextColorLight),
    ),
  );
  ThemeData darkTheme = ThemeData(
    primarySwatch: AppColors.primaryDark,
    secondaryHeaderColor: AppColors.secondaryDark,
    textTheme: TextTheme(
      headline1: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryTextColorDark),
      headline2: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryTextColorDark),
      headline3: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryTextColorDark),
      headline4: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryTextColorDark),
      headline5: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryTextColorDark),
      headline6: TextStyle(
          fontSize: 10.0,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryTextColorDark),
      bodyText1: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
          color: AppColors.primaryTextColorDark),
      bodyText2: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          color: AppColors.primaryTextColorDark),
      subtitle1: TextStyle(
          fontSize: 10.0,
          fontWeight: FontWeight.normal,
          color: AppColors.primaryTextColorDark),
      subtitle2: TextStyle(
          fontSize: 8.0,
          fontWeight: FontWeight.normal,
          color: AppColors.primaryTextColorDark),
    ),
  );
}

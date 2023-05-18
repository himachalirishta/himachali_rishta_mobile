import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/features/splash/ui/splash_page.dart';
import 'package:sizer/sizer.dart';

import 'core/app_colors.dart';
import 'firebase_options.dart';
import 'main_get_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
    secondaryHeaderColor: AppColors.secondaryLight,
    textTheme: TextTheme(
      displayLarge: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryTextColorLight),
      displayMedium: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryTextColorLight),
      displaySmall: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryTextColorLight),
      headlineMedium: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryTextColorLight),
      headlineSmall: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryTextColorLight),
      titleLarge: TextStyle(
          fontSize: 10.0,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryTextColorLight),
      bodyLarge: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
          color: AppColors.primaryTextColorLight),
      bodyMedium: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          color: AppColors.primaryTextColorLight),
      titleMedium: TextStyle(
          fontSize: 10.0,
          fontWeight: FontWeight.normal,
          color: AppColors.primaryTextColorLight),
      titleSmall: TextStyle(
          fontSize: 8.0,
          fontWeight: FontWeight.normal,
          color: AppColors.primaryTextColorLight),
    ), colorScheme: ColorScheme.fromSwatch(primarySwatch: AppColors.primaryLight).copyWith(background: AppColors.primaryBackground),
  );
  ThemeData darkTheme = ThemeData(
    secondaryHeaderColor: AppColors.secondaryDark,
    textTheme: TextTheme(
      displayLarge: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryTextColorDark),
      displayMedium: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryTextColorDark),
      displaySmall: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryTextColorDark),
      headlineMedium: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryTextColorDark),
      headlineSmall: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryTextColorDark),
      titleLarge: TextStyle(
          fontSize: 10.0,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryTextColorDark),
      bodyLarge: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
          color: AppColors.primaryTextColorDark),
      bodyMedium: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          color: AppColors.primaryTextColorDark),
      titleMedium: TextStyle(
          fontSize: 10.0,
          fontWeight: FontWeight.normal,
          color: AppColors.primaryTextColorDark),
      titleSmall: TextStyle(
          fontSize: 8.0,
          fontWeight: FontWeight.normal,
          color: AppColors.primaryTextColorDark),
    ), colorScheme: ColorScheme.fromSwatch(primarySwatch: AppColors.primaryDark).copyWith(background: const Color(0xff1d2428)),
  );
}

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/core/app_colors.dart';
import 'package:himachali_rishta/features/authentication/login/ui/SubmitInformationPage.dart';
import 'package:sizer/sizer.dart';

import '../get_controller/login_page_get_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPageGetController getController = Get.put(LoginPageGetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          ///***If you have exported images you must have to copy those images in assets/images directory.
          Image(
            image: AssetImage("assets/images/wallpaper.jpg"),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              width: 75.w,
              height: 35.h,
              decoration: BoxDecoration(
                color: AppColors.secondaryLight.withOpacity(0.5),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'Start with Mobile Number',
                    style: TextStyle(
                      color: AppColors.primaryTextColorDark,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: getController.isdCodeController,
                            style: TextStyle(
                                color: AppColors.primaryTextColorDark),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4.0),
                                borderSide: BorderSide(
                                  color: AppColors.primaryTextColorDark,
                                  width: 2.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4.0),
                                borderSide: BorderSide(
                                  color: AppColors.primaryTextColorDark,
                                  width: 2.0,
                                ),
                              ),
                              label: Text(
                                'ISD Code',
                                style: TextStyle(
                                  color: AppColors.primaryTextColorDark,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Expanded(
                          flex: 3,
                          child: TextFormField(
                            controller: getController.mobileNumberController,
                            style: TextStyle(
                                color: AppColors.primaryTextColorDark),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4.0),
                                borderSide: BorderSide(
                                  color: AppColors.primaryTextColorDark,
                                  width: 2.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4.0),
                                borderSide: BorderSide(
                                  color: AppColors.primaryTextColorDark,
                                  width: 2.0,
                                ),
                              ),
                              label: Text(
                                'Mobile Number',
                                style: TextStyle(
                                  color: AppColors.primaryTextColorDark,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Get.to(() => SubmitInformationPage());
                            },
                            child: Text(
                              'Get OTP',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

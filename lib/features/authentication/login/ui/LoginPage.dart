///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/core/app_colors.dart';
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
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                      height: 45.sp,
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                showCountryPicker(
                                    context: context,
                                    onSelect: (country) {
                                      getController.selectedCountry.value =
                                          country;
                                    });
                              },
                              child: Container(
                                height: double.maxFinite,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  border: Border.all(
                                    color: AppColors.primaryTextColorDark,
                                    width: 1.0.sp,
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Obx(() {
                                  return Text(
                                    getController.selectedCountry.value.phoneCode,
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      color: AppColors.primaryTextColorDark,
                                    ),
                                  );
                                }),
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
                              keyboardType: TextInputType.phone,
                              style: TextStyle(
                                  color: AppColors.primaryTextColorDark,
                                  fontSize: 18.sp),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                  borderSide: BorderSide(
                                    color: AppColors.primaryTextColorDark,
                                    width: 1.0.sp,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                  borderSide: BorderSide(
                                    color: AppColors.primaryTextColorDark,
                                    width: 1.0.sp,
                                  ),
                                ),
                                label: Text(
                                  'Mobile Number',
                                  style: TextStyle(
                                    color: AppColors.primaryTextColorDark,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Obx(() {
                    return getController.showLoader.value
                        ? CircularProgressIndicator()
                        : Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      getController
                                          .initiatePhoneVerification(context);
                                    },
                                    child: Text(
                                      'Get OTP',
                                      style: TextStyle(fontSize: 12.sp),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

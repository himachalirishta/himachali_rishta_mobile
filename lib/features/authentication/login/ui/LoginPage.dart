///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/core/app_colors.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:sizer/sizer.dart';

import '../get_controller/login_page_get_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPageGetController getController = Get.put(LoginPageGetController());

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      /*stream: Stream.periodic(Duration(seconds: 1), (_) {
                  return SizerUtil.orientation == Orientation.landscape;
                }),*/
      body: StreamBuilder<bool>(
          stream: Stream.periodic(Duration(seconds: 1), (_) {
            return SizerUtil.orientation == Orientation.landscape;
          }),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Stack(
              alignment: Alignment.center,
              children: [
                ///***If you have exported images you must have to copy those images in assets/images directory.
                SizedBox(
                  height: 100.h,
                  width: 100.w,
                  child: Image(
                    image: AssetImage("assets/images/wallpaper.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(32.sp.adjustedSp),
                    padding: EdgeInsets.zero,
                    width: snapshot.data! ? 0.75 * 700 : 75.w.adjustedW,
                    height: 150.sp.adjustedSp,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.secondaryLight.withOpacity(0.5),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(16.0.sp.adjustedSp),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 8.sp.adjustedSp,
                        ),
                        Text(
                          'Start with Mobile Number',
                          style: TextStyle(
                            color: AppColors.primaryTextColorDark,
                            fontSize: 15.sp.adjustedSp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8.sp.adjustedSp,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: SizedBox(
                            height: 45.sp.adjustedSp,
                            child: Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      showCountryPicker(
                                          context: context,
                                          onSelect: (country) {
                                            getController.selectedCountry
                                                .value = country;
                                            getController.phoneCodeController
                                                .text = country.phoneCode;
                                          });
                                    },
                                    child: TextFormField(
                                      enabled: false,
                                      controller:
                                      getController.phoneCodeController,
                                      keyboardType: TextInputType.phone,
                                      style: TextStyle(
                                          color:
                                          AppColors.primaryTextColorDark,
                                          fontSize: 18.sp.adjustedSp),
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                              4.0.sp.adjustedSp),
                                          borderSide: BorderSide(
                                            color: AppColors
                                                .primaryTextColorDark,
                                            width: 0.5.sp.adjustedSp,
                                          ),
                                        ),
                                        disabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                              4.0.sp.adjustedSp),
                                          borderSide: BorderSide(
                                            color: AppColors
                                                .primaryTextColorDark,
                                            width: 0.5.sp.adjustedSp,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                              4.0.sp.adjustedSp),
                                          borderSide: BorderSide(
                                            color: AppColors
                                                .primaryTextColorDark,
                                            width: 0.5.sp.adjustedSp,
                                          ),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                              4.0.sp.adjustedSp),
                                          borderSide: BorderSide(
                                            color: AppColors
                                                .primaryTextColorDark,
                                            width: 0.5.sp.adjustedSp,
                                          ),
                                        ),
                                        /*hintText: 'Phone Code',
                                                hintStyle: TextStyle(
                                                  color: AppColors
                                                      .primaryTextColorDark,
                                                  fontSize: 10.sp.adjustedSp,
                                                  fontWeight: FontWeight.bold,
                                                ),*/
                                        label: Text(
                                          'Phone Code',
                                          style: TextStyle(
                                            color: AppColors
                                                .primaryTextColorDark,
                                            fontSize: 10.sp.adjustedSp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                /*Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              showCountryPicker(
                                                  context: context,
                                                  onSelect: (country) {
                                                    getController.selectedCountry
                                                        .value = country;
                                                  });
                                            },
                                            child: Container(
                                              height: double.maxFinite,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(
                                                    4.0.sp.adjustedSp),
                                                border: Border.all(
                                                  color:
                                                      AppColors.primaryTextColorDark,
                                                  width: 0.5.sp.adjustedSp,
                                                ),
                                              ),
                                              alignment: Alignment.center,
                                              child: Obx(() {
                                                return Text(
                                                  getController.selectedCountry.value
                                                      .phoneCode,
                                                  style: TextStyle(
                                                    fontSize: 18.sp.adjustedSp,
                                                    color: AppColors
                                                        .primaryTextColorDark,
                                                  ),
                                                );
                                              }),
                                            ),
                                          ),
                                        ),*/
                                SizedBox(
                                  width: 4.sp.adjustedSp,
                                ),
                                Expanded(
                                  flex: 3,
                                  child: TextFormField(
                                    controller:
                                    getController.mobileNumberController,
                                    keyboardType: TextInputType.phone,
                                    style: TextStyle(
                                        color: AppColors.primaryTextColorDark,
                                        fontSize: 18.sp.adjustedSp),
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            4.0.sp.adjustedSp),
                                        borderSide: BorderSide(
                                          color:
                                          AppColors.primaryTextColorDark,
                                          width: 0.5.sp.adjustedSp,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            4.0.sp.adjustedSp),
                                        borderSide: BorderSide(
                                          color:
                                          AppColors.primaryTextColorDark,
                                          width: 0.5.sp.adjustedSp,
                                        ),
                                      ),
                                      label: Text(
                                        'Mobile Number',
                                        style: TextStyle(
                                          color:
                                          AppColors.primaryTextColorDark,
                                          fontSize: 10.sp.adjustedSp,
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
                          height: 8.sp.adjustedSp,
                        ),
                        Obx(() {
                          return getController.showLoader.value
                              ? CircularProgressIndicator()
                              : Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.0.sp.adjustedSp),
                            child: Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      getController
                                          .initiatePhoneVerification(
                                          context);
                                    },
                                    child: Text(
                                      'Get OTP',
                                      style: TextStyle(
                                          fontSize: 12.sp.adjustedSp),
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
            );
          }
          return Container();
        }
      ),
    );
  }
}

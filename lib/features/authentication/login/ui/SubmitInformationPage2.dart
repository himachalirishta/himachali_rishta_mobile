import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/features/authentication/login/ui/UploadPhotoScreen.dart';
import 'package:himachali_rishta/features/authentication/login/ui/side_option_drawer.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/app_colors.dart';
import '../get_controller/submit_information_2_get_controller.dart';

class SubmitInformationPage2 extends StatelessWidget {
  SubmitInformationPage2({Key? key}) : super(key: key);

  SubmitInformation2GetController getController =
      Get.put(SubmitInformation2GetController());

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (getController.animationController.isCompleted) {
          getController.animationController.reverse();
        } else {
          Get.back();
        }
        return Future.value(false);
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Container(
            color: Theme.of(context).primaryColor,
          ),
        ),
        body: Stack(
          children: [
            SizedBox(
              height: 100.h,
              child: Column(
                children: [
                  Container(
                    height: 10.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Center(
                      child: Text(
                        'Submit Bride/Groom Information',
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.primaryTextColorDark,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 8.0),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return formData(context)[index];
                      },
                      itemCount: formData(context).length,
                    ),
                  )),
                ],
              ),
            ),
            AnimatedBuilder(
                animation: getController.animationController,
                builder: (context, widget) {
                  return Positioned(
                      right:
                          -75.w * (1 - getController.animationController.value),
                      child: SideOptionDrawer(
                        options: getController
                            .selectedOption[
                                getController.selectedOptionIndex.value]!
                            .value,
                        onOptionSelected: (index) {
                          switch (getController.selectedOptionIndex.value) {
                            //gender, religion, caste, marital status, posting this profile for
                            case 1:
                              getController.selectedOccupationType.value =
                                  getController.occupationType[index];
                              break;

                            default:
                              break;
                          }
                        },
                      ));
                }),
          ],
        ),
      ),
    );
  }

  List<Widget> formData(BuildContext context) {
    return [
      SizedBox(
        height: 16,
        width: 16,
      ),
      TextFormField(
        controller: getController.heightController,
        obscureText: false,
        textAlign: TextAlign.start,
        maxLines: 1,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          fontSize: 14,
          color: Color(0xff000000),
        ),
        decoration: InputDecoration(
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(color: Color(0x55757575), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(color: Color(0x55757575), width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(color: Color(0x55757575), width: 1),
          ),
          labelText: "Height",
          labelStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: 14,
            color: Color(0xff000000),
          ),
          filled: false,
          fillColor: Color(0xfff2f2f3),
          isDense: false,
          contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
        ),
      ),
      SizedBox(
        height: 16,
        width: 16,
      ),
      GestureDetector(
        onTap: () {
          getController.selectedOptionIndex.value = 1;
          getController.animationController.forward();
        },
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              border: Border.all(color: Color(0x54757575), width: 1),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                Expanded(child: Obx(() {
                  return Text(
                    getController.selectedOccupationType.value,
                    style: TextStyle(fontSize: 10.sp),
                  );
                })),
                Icon(
                  Icons.chevron_right,
                  color: Color(0xff616161),
                  size: 15.sp,
                )
              ],
            )),
      ),
      SizedBox(
        height: 16,
        width: 16,
      ),
      GestureDetector(
        onTap: () {
          getController.selectedOptionIndex.value = 2;
          getController.animationController.forward();
        },
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              border: Border.all(color: Color(0x55757575), width: 1),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                Expanded(child: Obx(() {
                  return Text(
                    getController.selectedEducation.value,
                    style: TextStyle(fontSize: 10.sp),
                  );
                })),
                Icon(
                  Icons.chevron_right,
                  color: Color(0xff616161),
                  size: 15.sp,
                )
              ],
            )),
      ),
      SizedBox(
        height: 16,
        width: 16,
      ),
      TextFormField(
        controller: getController.livingCountryController,
        obscureText: false,
        textAlign: TextAlign.start,
        maxLines: 1,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          fontSize: 14,
          color: Color(0xff000000),
        ),
        decoration: InputDecoration(
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(color: Color(0x55757575), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(color: Color(0x55757575), width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(color: Color(0x55757575), width: 1),
          ),
          labelText: "Living Country",
          labelStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: 14,
            color: Color(0xff000000),
          ),
          filled: false,
          fillColor: Color(0xfff2f2f3),
          isDense: false,
          contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
        ),
      ),
      SizedBox(
        height: 16,
        width: 16,
      ),
      TextFormField(
        controller: getController.livingStateController,
        obscureText: false,
        textAlign: TextAlign.start,
        maxLines: 1,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          fontSize: 14,
          color: Color(0xff000000),
        ),
        decoration: InputDecoration(
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(color: Color(0x55757575), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(color: Color(0x55757575), width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(color: Color(0x55757575), width: 1),
          ),
          labelText: "Living State",
          labelStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: 14,
            color: Color(0xff000000),
          ),
          filled: false,
          fillColor: Color(0xfff2f2f3),
          isDense: false,
          contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
        ),
      ),
      SizedBox(
        height: 16,
        width: 16,
      ),
      TextFormField(
        controller: getController.homeTownCountryController,
        obscureText: false,
        textAlign: TextAlign.start,
        maxLines: 1,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          fontSize: 14,
          color: Color(0xff000000),
        ),
        decoration: InputDecoration(
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(color: Color(0x55757575), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(color: Color(0x55757575), width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(color: Color(0x55757575), width: 1),
          ),
          labelText: "Home Country",
          labelStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: 14,
            color: Color(0xff000000),
          ),
          filled: false,
          fillColor: Color(0xfff2f2f3),
          isDense: false,
          contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
        ),
      ),
      SizedBox(
        height: 16,
        width: 16,
      ),
      TextFormField(
        controller: getController.homeTownStateController,
        obscureText: false,
        textAlign: TextAlign.start,
        maxLines: 1,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          fontSize: 14,
          color: Color(0xff000000),
        ),
        decoration: InputDecoration(
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(color: Color(0x55757575), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(color: Color(0x55757575), width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(color: Color(0x55757575), width: 1),
          ),
          labelText: "Home State",
          labelStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: 14,
            color: Color(0xff000000),
          ),
          filled: false,
          fillColor: Color(0xfff2f2f3),
          isDense: false,
          contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
        ),
      ),
      SizedBox(
        height: 16,
        width: 16,
      ),
      TextFormField(
        controller: getController.homeTownCityController,
        obscureText: false,
        textAlign: TextAlign.start,
        maxLines: 1,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          fontSize: 14,
          color: Color(0xff000000),
        ),
        decoration: InputDecoration(
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(color: Color(0x55757575), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(color: Color(0x55757575), width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(color: Color(0x55757575), width: 1),
          ),
          labelText: "Home City",
          labelStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: 14,
            color: Color(0xff000000),
          ),
          filled: false,
          fillColor: Color(0xfff2f2f3),
          isDense: false,
          contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
        ),
      ),
      SizedBox(
        height: 16,
        width: 16,
      ),
      Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: getController.birthPlaceController,
              obscureText: false,
              textAlign: TextAlign.start,
              maxLines: 1,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Color(0xff000000),
              ),
              decoration: InputDecoration(
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide: BorderSide(color: Color(0x55757575), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide: BorderSide(color: Color(0x55757575), width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide: BorderSide(color: Color(0x55757575), width: 1),
                ),
                labelText: "Birth Place",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Color(0xff000000),
                ),
                filled: false,
                fillColor: Color(0xfff2f2f3),
                isDense: false,
                contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                showTimePicker(context: context, initialTime: TimeOfDay.now())
                    .then((value) {
                  if (value!= null) {
                    getController.birthTimeController.text =
                        "${value.hour}:${value.minute}";
                  }
                });
              },
              child: TextFormField(
                controller: getController.birthTimeController,
                obscureText: false,
                textAlign: TextAlign.start,
                maxLines: 1,
                enabled: false,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Color(0xff000000),
                ),
                decoration: InputDecoration(
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0),
                    borderSide: BorderSide(color: Color(0x55757575), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0),
                    borderSide: BorderSide(color: Color(0x55757575), width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0),
                    borderSide: BorderSide(color: Color(0x55757575), width: 1),
                  ),
                  labelText: "Birth Time",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                  filled: false,
                  fillColor: Color(0xfff2f2f3),
                  isDense: false,
                  contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                ),
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 16,
        width: 16,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: MaterialButton(
          onPressed: () {
            Get.to(() => UploadPhotoScreen());
          },
          color: Color(0xffac0f11),
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            "Proceed",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                color: AppColors.primaryTextColorDark),
          ),
          textColor: Color(0xff000000),
          height: 40,
          minWidth: 140,
        ),
      ),
    ];
  }
}

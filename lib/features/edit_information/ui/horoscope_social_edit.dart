import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/features/edit_information/get_controllers/horoscope_social_get_controller.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:sizer/sizer.dart';

import '../../authentication/login/ui/side_option_drawer.dart';

class HoroscopeSocialEditPage extends StatelessWidget {
  HoroscopeSocialEditPage({super.key});

  HoroscopeSocialGetController getController =
      Get.put(HoroscopeSocialGetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Container(
            color: Theme.of(context).primaryColor,
          ),
        ),
        body: Stack(
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 16.sp, vertical: 8.0.sp),
              child: ListView(
                children: [
                  GestureDetector(
                    onTap: () {
                      getController.selectedOptionIndex.value = 1;
                      getController.animationController.forward();
                    },
                    child: TextField(
                      enabled: false,
                      controller: getController.manglikController,
                      obscureText: false,
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 12.sp.adjustedSp,
                        color: Color(0xff000000),
                      ),
                      decoration: InputDecoration(
                        disabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(4.0.sp.adjustedSp),
                          borderSide: BorderSide(
                              color: Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(4.0.sp.adjustedSp),
                          borderSide: BorderSide(
                              color: Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(4.0.sp.adjustedSp),
                          borderSide: BorderSide(
                              color: Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                        ),
                        labelText: "Manglik",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 12.sp.adjustedSp,
                          color: Color(0xff000000),
                        ),
                        filled: false,
                        fillColor: Color(0xfff2f2f3),
                        isDense: false,
                        suffixIcon: Icon(
                          Icons.chevron_right,
                          color: Color(0xff000000),
                        ),
                        contentPadding: EdgeInsets.fromLTRB(12.sp.adjustedSp,
                            8.sp.adjustedSp, 12.sp.adjustedSp, 8),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.sp.adjustedSp,
                  ),
                  TextField(
                    controller: getController.birthPlaceController,
                    obscureText: false,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 12.sp.adjustedSp,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                        borderSide: BorderSide(
                            color: Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                        borderSide: BorderSide(
                            color: Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                        borderSide: BorderSide(
                            color: Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                      ),
                      labelText: "Birth Place",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 12.sp.adjustedSp,
                        color: Color(0xff000000),
                      ),
                      filled: false,
                      fillColor: Color(0xfff2f2f3),
                      isDense: false,
                      contentPadding: EdgeInsets.fromLTRB(12.sp.adjustedSp,
                          8.sp.adjustedSp, 12.sp.adjustedSp, 8),
                    ),
                  ),
                  SizedBox(
                    height: 8.sp.adjustedSp,
                  ),
                  GestureDetector(
                    onTap: () {
                      showTimePicker(
                              context: context, initialTime: TimeOfDay.now())
                          .then((value) {
                        if (value != null) {
                          getController.birthTimeController.text =
                              '${value.hour}:${value.minute}';
                        }
                      });
                    },
                    child: TextField(
                      enabled: false,
                      controller: getController.birthTimeController,
                      obscureText: false,
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 12.sp.adjustedSp,
                        color: Color(0xff000000),
                      ),
                      decoration: InputDecoration(
                        disabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(4.0.sp.adjustedSp),
                          borderSide: BorderSide(
                              color: Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(4.0.sp.adjustedSp),
                          borderSide: BorderSide(
                              color: Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(4.0.sp.adjustedSp),
                          borderSide: BorderSide(
                              color: Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                        ),
                        labelText: "Birth Time",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 12.sp.adjustedSp,
                          color: Color(0xff000000),
                        ),
                        filled: false,
                        fillColor: Color(0xfff2f2f3),
                        isDense: false,
                        suffixIcon: Icon(
                          Icons.chevron_right,
                          color: Color(0xff000000),
                        ),
                        contentPadding: EdgeInsets.fromLTRB(12.sp.adjustedSp,
                            8.sp.adjustedSp, 12.sp.adjustedSp, 8),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.sp.adjustedSp,
                  ),
                  TextField(
                    controller: getController.patSubcastController,
                    obscureText: false,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 12.sp.adjustedSp,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                        borderSide: BorderSide(
                            color: Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                        borderSide: BorderSide(
                            color: Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                        borderSide: BorderSide(
                            color: Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                      ),
                      labelText: "Paternal Subcaste",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 12.sp.adjustedSp,
                        color: Color(0xff000000),
                      ),
                      filled: false,
                      fillColor: Color(0xfff2f2f3),
                      isDense: false,
                      contentPadding: EdgeInsets.fromLTRB(12.sp.adjustedSp,
                          8.sp.adjustedSp, 12.sp.adjustedSp, 8),
                    ),
                  ),
                  SizedBox(
                    height: 8.sp.adjustedSp,
                  ),
                  TextField(
                    controller: getController.maternalSubcastController,
                    obscureText: false,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 12.sp.adjustedSp,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                        borderSide: BorderSide(
                            color: Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                        borderSide: BorderSide(
                            color: Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                        borderSide: BorderSide(
                            color: Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                      ),
                      labelText: "Maternal Subcaste",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 12.sp.adjustedSp,
                        color: Color(0xff000000),
                      ),
                      filled: false,
                      fillColor: Color(0xfff2f2f3),
                      isDense: false,
                      contentPadding: EdgeInsets.fromLTRB(12.sp.adjustedSp,
                          8.sp.adjustedSp, 12.sp.adjustedSp, 8),
                    ),
                  ),
                  SizedBox(
                    height: 8.sp.adjustedSp,
                  ),
                  TextField(
                    controller: getController.gotraController,
                    obscureText: false,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 12.sp.adjustedSp,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                        borderSide: BorderSide(
                            color: Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                        borderSide: BorderSide(
                            color: Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                        borderSide: BorderSide(
                            color: Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                      ),
                      labelText: "Gotra",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 12.sp.adjustedSp,
                        color: Color(0xff000000),
                      ),
                      filled: false,
                      fillColor: Color(0xfff2f2f3),
                      isDense: false,
                      contentPadding: EdgeInsets.fromLTRB(12.sp.adjustedSp,
                          8.sp.adjustedSp, 12.sp.adjustedSp, 8),
                    ),
                  ),
                  SizedBox(
                    height: 8.sp.adjustedSp,
                  ),
                  TextField(
                    controller: getController.rashiController,
                    obscureText: false,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 12.sp.adjustedSp,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                        borderSide: BorderSide(
                            color: Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                        borderSide: BorderSide(
                            color: Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                        borderSide: BorderSide(
                            color: Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                      ),
                      labelText: "Rashi",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 12.sp.adjustedSp,
                        color: Color(0xff000000),
                      ),
                      filled: false,
                      fillColor: Color(0xfff2f2f3),
                      isDense: false,
                      contentPadding: EdgeInsets.fromLTRB(12.sp.adjustedSp,
                          8.sp.adjustedSp, 12.sp.adjustedSp, 8),
                    ),
                  ),
                  SizedBox(
                    height: 8.sp.adjustedSp,
                  ),
                  TextField(
                    controller: getController.motherTongueController,
                    obscureText: false,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 12.sp.adjustedSp,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                        borderSide: BorderSide(
                            color: Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                        borderSide: BorderSide(
                            color: Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                        borderSide: BorderSide(
                            color: Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                      ),
                      labelText: "Mother Tongue",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 12.sp.adjustedSp,
                        color: Color(0xff000000),
                      ),
                      filled: false,
                      fillColor: Color(0xfff2f2f3),
                      isDense: false,
                      contentPadding: EdgeInsets.fromLTRB(12.sp.adjustedSp,
                          8.sp.adjustedSp, 12.sp.adjustedSp, 8),
                    ),
                  ),
                  SizedBox(
                    height: 8.sp.adjustedSp,
                    width: 16.sp.adjustedSp,
                  ),
                  MaterialButton(
                    onPressed: () {
                      getController.submitHoroscopeSocial();
                    },
                    color: Color(0xffac0f11),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        fontSize: 12.sp.adjustedSp,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Colors.white,
                      ),
                    ),
                    textColor: Color(0xff000000),
                    height: 38.sp.adjustedSp,
                    minWidth: 138.sp.adjustedSp,
                  ),
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
                            case 1:
                              getController.selectedManglik.value =
                                  getController.manglik[index];
                              getController.manglikController.text =
                                  getController.selectedManglik.value;
                              getController.animationController.reverse();
                              break;

                            default:
                              break;
                          }
                        },
                      ));
                }),
          ],
        ));
  }
}

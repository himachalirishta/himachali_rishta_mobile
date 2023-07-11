import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:sizer/sizer.dart';

import '../../authentication/login/ui/side_option_drawer.dart';
import '../get_controllers/family_details_get_controller.dart';

class FamilyDetailsEdit extends StatelessWidget {
  FamilyDetailsEdit({super.key});

  FamilyDetailsGetController getController =
      Get.put(FamilyDetailsGetController());

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
            preferredSize: const Size.fromHeight(0),
            child: Container(
              color: Theme.of(context).primaryColor,
            ),
          ),
          body: StreamBuilder<bool>(
              stream: Stream.periodic(const Duration(seconds: 1), (_) {
                return SizerUtil.orientation == Orientation.landscape;
              }),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: snapshot.data! ? 700 : 100.w.adjustedW),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.sp.adjustedSp,
                            vertical: 8.sp.adjustedSp,
                          ),
                          child: ListView(
                            children: [
                              TextField(
                                controller:
                                    getController.fatherOccupationController,
                                obscureText: false,
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12.sp.adjustedSp,
                                  color: const Color(0xff000000),
                                ),
                                decoration: InputDecoration(
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        4.0.sp.adjustedSp),
                                    borderSide: BorderSide(
                                        color: const Color(0xffe0e0e0),
                                        width: 1.sp.adjustedSp),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        4.0.sp.adjustedSp),
                                    borderSide: BorderSide(
                                        color: const Color(0xffe0e0e0),
                                        width: 1.sp.adjustedSp),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        4.0.sp.adjustedSp),
                                    borderSide: BorderSide(
                                        color: const Color(0xffe0e0e0),
                                        width: 1.sp.adjustedSp),
                                  ),
                                  labelText: "Father's Occupation",
                                  labelStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12.sp.adjustedSp,
                                    color: const Color(0xff000000),
                                  ),
                                  filled: false,
                                  fillColor: const Color(0xfff2f2f3),
                                  isDense: false,
                                  contentPadding: EdgeInsets.fromLTRB(
                                      12.sp.adjustedSp,
                                      8.sp.adjustedSp,
                                      12.sp.adjustedSp,
                                      8),
                                ),
                              ),
                              SizedBox(
                                height: 8.sp.adjustedSp,
                              ),
                              TextField(
                                controller:
                                    getController.motherOccupationController,
                                obscureText: false,
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12.sp.adjustedSp,
                                  color: const Color(0xff000000),
                                ),
                                decoration: InputDecoration(
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        4.0.sp.adjustedSp),
                                    borderSide: BorderSide(
                                        color: const Color(0xffe0e0e0),
                                        width: 1.sp.adjustedSp),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        4.0.sp.adjustedSp),
                                    borderSide: BorderSide(
                                        color: const Color(0xffe0e0e0),
                                        width: 1.sp.adjustedSp),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        4.0.sp.adjustedSp),
                                    borderSide: BorderSide(
                                        color: const Color(0xffe0e0e0),
                                        width: 1.sp.adjustedSp),
                                  ),
                                  labelText: "Mother's Occupation",
                                  labelStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12.sp.adjustedSp,
                                    color: const Color(0xff000000),
                                  ),
                                  filled: false,
                                  fillColor: const Color(0xfff2f2f3),
                                  isDense: false,
                                  contentPadding: EdgeInsets.fromLTRB(
                                      12.sp.adjustedSp,
                                      8.sp.adjustedSp,
                                      12.sp.adjustedSp,
                                      8),
                                ),
                              ),
                              SizedBox(
                                height: 8.sp.adjustedSp,
                              ),
                              GestureDetector(
                                onTap: () {
                                  getController.selectedOptionIndex.value = 1;
                                  getController.animationController.forward();
                                },
                                child: TextField(
                                  enabled: false,
                                  controller:
                                      getController.familyTypeController,
                                  obscureText: false,
                                  textAlign: TextAlign.start,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12.sp.adjustedSp,
                                    color: const Color(0xff000000),
                                  ),
                                  decoration: InputDecoration(
                                    disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          4.0.sp.adjustedSp),
                                      borderSide: BorderSide(
                                          color: const Color(0xffe0e0e0),
                                          width: 1.sp.adjustedSp),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          4.0.sp.adjustedSp),
                                      borderSide: BorderSide(
                                          color: const Color(0xffe0e0e0),
                                          width: 1.sp.adjustedSp),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          4.0.sp.adjustedSp),
                                      borderSide: BorderSide(
                                          color: const Color(0xffe0e0e0),
                                          width: 1.sp.adjustedSp),
                                    ),
                                    labelText: "Family Type",
                                    labelStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.sp.adjustedSp,
                                      color: const Color(0xff000000),
                                    ),
                                    filled: false,
                                    fillColor: const Color(0xfff2f2f3),
                                    isDense: false,
                                    suffixIcon: const Icon(
                                      Icons.chevron_right,
                                      color: Color(0xff000000),
                                    ),
                                    contentPadding: EdgeInsets.fromLTRB(
                                        12.sp.adjustedSp,
                                        8.sp.adjustedSp,
                                        12.sp.adjustedSp,
                                        8),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8.sp.adjustedSp,
                              ),
                              GestureDetector(
                                onTap: () {
                                  getController.selectedOptionIndex.value = 2;
                                  getController.animationController.forward();
                                },
                                child: TextField(
                                  enabled: false,
                                  controller:
                                      getController.elderBrothersController,
                                  obscureText: false,
                                  textAlign: TextAlign.start,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12.sp.adjustedSp,
                                    color: const Color(0xff000000),
                                  ),
                                  decoration: InputDecoration(
                                    disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          4.0.sp.adjustedSp),
                                      borderSide: BorderSide(
                                          color: const Color(0xffe0e0e0),
                                          width: 1.sp.adjustedSp),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          4.0.sp.adjustedSp),
                                      borderSide: BorderSide(
                                          color: const Color(0xffe0e0e0),
                                          width: 1.sp.adjustedSp),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          4.0.sp.adjustedSp),
                                      borderSide: BorderSide(
                                          color: const Color(0xffe0e0e0),
                                          width: 1.sp.adjustedSp),
                                    ),
                                    labelText: "Elder Brothers",
                                    labelStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.sp.adjustedSp,
                                      color: const Color(0xff000000),
                                    ),
                                    filled: false,
                                    fillColor: const Color(0xfff2f2f3),
                                    isDense: false,
                                    contentPadding: EdgeInsets.fromLTRB(
                                        12.sp.adjustedSp,
                                        8.sp.adjustedSp,
                                        12.sp.adjustedSp,
                                        8),
                                    suffixIcon: const Icon(
                                      Icons.chevron_right,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8.sp.adjustedSp,
                              ),
                              TextField(
                                controller:
                                    getController.youngerBrothersController,
                                keyboardType: TextInputType.number,
                                obscureText: false,
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12.sp.adjustedSp,
                                  color: const Color(0xff000000),
                                ),
                                decoration: InputDecoration(
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        4.0.sp.adjustedSp),
                                    borderSide: BorderSide(
                                        color: const Color(0xffe0e0e0),
                                        width: 1.sp.adjustedSp),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        4.0.sp.adjustedSp),
                                    borderSide: BorderSide(
                                        color: const Color(0xffe0e0e0),
                                        width: 1.sp.adjustedSp),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        4.0.sp.adjustedSp),
                                    borderSide: BorderSide(
                                        color: const Color(0xffe0e0e0),
                                        width: 1.sp.adjustedSp),
                                  ),
                                  labelText: "Younger Brothers",
                                  labelStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12.sp.adjustedSp,
                                    color: const Color(0xff000000),
                                  ),
                                  filled: false,
                                  fillColor: const Color(0xfff2f2f3),
                                  isDense: false,
                                  contentPadding: EdgeInsets.fromLTRB(
                                      12.sp.adjustedSp,
                                      8.sp.adjustedSp,
                                      12.sp.adjustedSp,
                                      8),
                                ),
                              ),
                              Obx(() {
                                return Visibility(
                                  visible: getController
                                          .selectedElderBrothers.value !=
                                      '0',
                                  child: SizedBox(
                                    height: 8.sp.adjustedSp,
                                  ),
                                );
                              }),
                              Obx(() {
                                return Visibility(
                                  visible: getController
                                          .selectedElderBrothers.value !=
                                      '0',
                                  child: TextField(
                                    controller:
                                        getController.marriedBrothersController,
                                    keyboardType: TextInputType.number,
                                    obscureText: false,
                                    textAlign: TextAlign.start,
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.sp.adjustedSp,
                                      color: const Color(0xff000000),
                                    ),
                                    decoration: InputDecoration(
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            4.0.sp.adjustedSp),
                                        borderSide: BorderSide(
                                            color: const Color(0xffe0e0e0),
                                            width: 1.sp.adjustedSp),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            4.0.sp.adjustedSp),
                                        borderSide: BorderSide(
                                            color: const Color(0xffe0e0e0),
                                            width: 1.sp.adjustedSp),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            4.0.sp.adjustedSp),
                                        borderSide: BorderSide(
                                            color: const Color(0xffe0e0e0),
                                            width: 1.sp.adjustedSp),
                                      ),
                                      labelText: "Married Brothers",
                                      labelStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12.sp.adjustedSp,
                                        color: const Color(0xff000000),
                                      ),
                                      filled: false,
                                      fillColor: const Color(0xfff2f2f3),
                                      isDense: false,
                                      contentPadding: EdgeInsets.fromLTRB(
                                          12.sp.adjustedSp,
                                          8.sp.adjustedSp,
                                          12.sp.adjustedSp,
                                          8),
                                    ),
                                  ),
                                );
                              }),
                              SizedBox(
                                height: 8.sp.adjustedSp,
                              ),
                              TextField(
                                controller:
                                    getController.elderSistersController,
                                keyboardType: TextInputType.number,
                                obscureText: false,
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12.sp.adjustedSp,
                                  color: const Color(0xff000000),
                                ),
                                decoration: InputDecoration(
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        4.0.sp.adjustedSp),
                                    borderSide: BorderSide(
                                        color: const Color(0xffe0e0e0),
                                        width: 1.sp.adjustedSp),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        4.0.sp.adjustedSp),
                                    borderSide: BorderSide(
                                        color: const Color(0xffe0e0e0),
                                        width: 1.sp.adjustedSp),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        4.0.sp.adjustedSp),
                                    borderSide: BorderSide(
                                        color: const Color(0xffe0e0e0),
                                        width: 1.sp.adjustedSp),
                                  ),
                                  labelText: "Elder Sisters",
                                  labelStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12.sp.adjustedSp,
                                    color: const Color(0xff000000),
                                  ),
                                  filled: false,
                                  fillColor: const Color(0xfff2f2f3),
                                  isDense: false,
                                  contentPadding: EdgeInsets.fromLTRB(
                                      12.sp.adjustedSp,
                                      8.sp.adjustedSp,
                                      12.sp.adjustedSp,
                                      8),
                                ),
                              ),
                              SizedBox(
                                height: 8.sp.adjustedSp,
                              ),
                              TextField(
                                controller:
                                    getController.youngerSistersController,
                                keyboardType: TextInputType.number,
                                obscureText: false,
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12.sp.adjustedSp,
                                  color: const Color(0xff000000),
                                ),
                                decoration: InputDecoration(
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        4.0.sp.adjustedSp),
                                    borderSide: BorderSide(
                                        color: const Color(0xffe0e0e0),
                                        width: 1.sp.adjustedSp),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        4.0.sp.adjustedSp),
                                    borderSide: BorderSide(
                                        color: const Color(0xffe0e0e0),
                                        width: 1.sp.adjustedSp),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        4.0.sp.adjustedSp),
                                    borderSide: BorderSide(
                                        color: const Color(0xffe0e0e0),
                                        width: 1.sp.adjustedSp),
                                  ),
                                  labelText: "Younger Sisters",
                                  labelStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12.sp.adjustedSp,
                                    color: const Color(0xff000000),
                                  ),
                                  filled: false,
                                  fillColor: const Color(0xfff2f2f3),
                                  isDense: false,
                                  contentPadding: EdgeInsets.fromLTRB(
                                      12.sp.adjustedSp,
                                      8.sp.adjustedSp,
                                      12.sp.adjustedSp,
                                      8),
                                ),
                              ),
                              SizedBox(
                                height: 8.sp.adjustedSp,
                              ),
                              TextField(
                                controller:
                                    getController.marriedSistersController,
                                keyboardType: TextInputType.number,
                                obscureText: false,
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12.sp.adjustedSp,
                                  color: const Color(0xff000000),
                                ),
                                decoration: InputDecoration(
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        4.0.sp.adjustedSp),
                                    borderSide: BorderSide(
                                        color: const Color(0xffe0e0e0),
                                        width: 1.sp.adjustedSp),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        4.0.sp.adjustedSp),
                                    borderSide: BorderSide(
                                        color: const Color(0xffe0e0e0),
                                        width: 1.sp.adjustedSp),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        4.0.sp.adjustedSp),
                                    borderSide: BorderSide(
                                        color: const Color(0xffe0e0e0),
                                        width: 1.sp.adjustedSp),
                                  ),
                                  labelText: "Married Sisters",
                                  labelStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12.sp.adjustedSp,
                                    color: const Color(0xff000000),
                                  ),
                                  filled: false,
                                  fillColor: const Color(0xfff2f2f3),
                                  isDense: false,
                                  contentPadding: EdgeInsets.fromLTRB(
                                      12.sp.adjustedSp,
                                      8.sp.adjustedSp,
                                      12.sp.adjustedSp,
                                      8),
                                ),
                              ),
                              SizedBox(
                                height: 8.sp.adjustedSp,
                                width: 16.sp.adjustedSp,
                              ),
                              MaterialButton(
                                onPressed: () {
                                  getController.submitFamilyDetails();
                                },
                                color: const Color(0xffac0f11),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(4.0.sp.adjustedSp),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                textColor: const Color(0xff000000),
                                height: 38.sp.adjustedSp,
                                minWidth: 138.sp.adjustedSp,
                                child: Text(
                                  "Submit",
                                  style: TextStyle(
                                    fontSize: 12.sp.adjustedSp,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        AnimatedBuilder(
                            animation: getController.animationController,
                            builder: (context, widget) {
                              return Positioned(
                                  right: -75.w *
                                      (1 -
                                          getController
                                              .animationController.value),
                                  child: SideOptionDrawer(
                                    options: getController
                                        .selectedOption[getController
                                            .selectedOptionIndex.value]!
                                        .value,
                                    onOptionSelected: (index) {
                                      switch (getController
                                          .selectedOptionIndex.value) {
                                        case 1:
                                          getController
                                                  .selectedFamilyType.value =
                                              getController.familyType[index];
                                          getController
                                                  .familyTypeController.text =
                                              getController
                                                  .selectedFamilyType.value;
                                          getController.animationController
                                              .reverse();
                                          break;
                                        case 2:
                                          getController
                                                  .selectedElderBrothers.value =
                                              getController
                                                  .elderBrothers[index];
                                          getController.elderBrothersController
                                                  .text =
                                              getController
                                                  .selectedElderBrothers.value
                                                  .toString();
                                          getController.animationController
                                              .reverse();
                                          break;

                                        default:
                                          break;
                                      }
                                    },
                                  ));
                            }),
                      ],
                    ),
                  );
                }
                return Scaffold(
                  appBar: PreferredSize(
                    preferredSize: const Size.fromHeight(0),
                    child: Container(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                );
              })),
    );
  }
}

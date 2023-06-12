import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:sizer/sizer.dart';

import '../../authentication/login/ui/side_option_drawer.dart';
import '../get_controllers/physical_attributes_and_eating_habits_get_controller.dart';

class PhysicalAttributesAndEatingHabitsPage extends StatelessWidget {
  PhysicalAttributesAndEatingHabitsPage({super.key});

  PhysicalAttributesAndEatingHabitsGetController getController =
      Get.put(PhysicalAttributesAndEatingHabitsGetController());

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
      child: StreamBuilder<bool>(
          stream: Stream.periodic(const Duration(seconds: 1), (_) {
            return SizerUtil.orientation == Orientation.landscape;
          }),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
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
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.sp.adjustedSp,
                          vertical: 8.0.sp.adjustedSp),
                      child: ListView(
                        children: [
                          Text(
                            'Height',
                            style: TextStyle(
                                fontSize: 10.sp.adjustedSp,
                                fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: getController.ftController,
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
                                      borderRadius: BorderRadius.circular(
                                          4.0.sp.adjustedSp),
                                      borderSide: BorderSide(
                                          color: Color(0xffe0e0e0),
                                          width: 1.sp.adjustedSp),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          4.0.sp.adjustedSp),
                                      borderSide: BorderSide(
                                          color: Color(0xffe0e0e0),
                                          width: 1.sp.adjustedSp),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          4.0.sp.adjustedSp),
                                      borderSide: BorderSide(
                                          color: Color(0xffe0e0e0),
                                          width: 1.sp.adjustedSp),
                                    ),
                                    labelText: "ft.",
                                    labelStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.sp.adjustedSp,
                                      color: Color(0xff000000),
                                    ),
                                    filled: false,
                                    fillColor: Color(0xfff2f2f3),
                                    isDense: false,
                                    contentPadding: EdgeInsets.fromLTRB(
                                        12.sp.adjustedSp,
                                        8.sp.adjustedSp,
                                        12.sp.adjustedSp,
                                        8),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8.sp.adjustedSp,
                              ),
                              Expanded(
                                child: TextField(
                                  controller: getController.inchesController,
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
                                      borderRadius: BorderRadius.circular(
                                          4.0.sp.adjustedSp),
                                      borderSide: BorderSide(
                                          color: Color(0xffe0e0e0),
                                          width: 1.sp.adjustedSp),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          4.0.sp.adjustedSp),
                                      borderSide: BorderSide(
                                          color: Color(0xffe0e0e0),
                                          width: 1.sp.adjustedSp),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          4.0.sp.adjustedSp),
                                      borderSide: BorderSide(
                                          color: Color(0xffe0e0e0),
                                          width: 1.sp.adjustedSp),
                                    ),
                                    labelText: "in.",
                                    labelStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.sp.adjustedSp,
                                      color: Color(0xff000000),
                                    ),
                                    filled: false,
                                    fillColor: Color(0xfff2f2f3),
                                    isDense: false,
                                    contentPadding: EdgeInsets.fromLTRB(
                                        12.sp.adjustedSp,
                                        8.sp.adjustedSp,
                                        12.sp.adjustedSp,
                                        8),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8.sp.adjustedSp,
                            width: 16.sp.adjustedSp,
                          ),
                          TextField(
                            controller: getController.weightController,
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
                                    color: Color(0xffe0e0e0),
                                    width: 1.sp.adjustedSp),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(4.0.sp.adjustedSp),
                                borderSide: BorderSide(
                                    color: Color(0xffe0e0e0),
                                    width: 1.sp.adjustedSp),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(4.0.sp.adjustedSp),
                                borderSide: BorderSide(
                                    color: Color(0xffe0e0e0),
                                    width: 1.sp.adjustedSp),
                              ),
                              labelText: "Weight",
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 12.sp.adjustedSp,
                                color: Color(0xff000000),
                              ),
                              filled: false,
                              fillColor: Color(0xfff2f2f3),
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
                          GestureDetector(
                            onTap: () {
                              getController.selectedOptionIndex.value = 1;
                              getController.animationController.forward();
                            },
                            child: TextField(
                              enabled: false,
                              controller: getController.bloodGroupController,
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
                                      color: Color(0xffe0e0e0),
                                      width: 1.sp.adjustedSp),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(4.0.sp.adjustedSp),
                                  borderSide: BorderSide(
                                      color: Color(0xffe0e0e0),
                                      width: 1.sp.adjustedSp),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(4.0.sp.adjustedSp),
                                  borderSide: BorderSide(
                                      color: Color(0xffe0e0e0),
                                      width: 1.sp.adjustedSp),
                                ),
                                labelText: "Blood Group",
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
                            width: 16.sp.adjustedSp,
                          ),
                          GestureDetector(
                            onTap: () {
                              getController.selectedOptionIndex.value = 2;
                              getController.animationController.forward();
                            },
                            child: TextField(
                              enabled: false,
                              controller: getController.complexionController,
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
                                      color: Color(0xffe0e0e0),
                                      width: 1.sp.adjustedSp),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(4.0.sp.adjustedSp),
                                  borderSide: BorderSide(
                                      color: Color(0xffe0e0e0),
                                      width: 1.sp.adjustedSp),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(4.0.sp.adjustedSp),
                                  borderSide: BorderSide(
                                      color: Color(0xffe0e0e0),
                                      width: 1.sp.adjustedSp),
                                ),
                                labelText: "Complexion",
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
                            width: 16.sp.adjustedSp,
                          ),
                          GestureDetector(
                            onTap: () {
                              getController.selectedOptionIndex.value = 3;
                              getController.animationController.forward();
                            },
                            child: TextField(
                              enabled: false,
                              controller: getController.bodyTypeController,
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
                                      color: Color(0xffe0e0e0),
                                      width: 1.sp.adjustedSp),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(4.0.sp.adjustedSp),
                                  borderSide: BorderSide(
                                      color: Color(0xffe0e0e0),
                                      width: 1.sp.adjustedSp),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(4.0.sp.adjustedSp),
                                  borderSide: BorderSide(
                                      color: Color(0xffe0e0e0),
                                      width: 1.sp.adjustedSp),
                                ),
                                labelText: "Body Type",
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
                            width: 16.sp.adjustedSp,
                          ),
                          GestureDetector(
                            onTap: () {
                              getController.selectedOptionIndex.value = 4;
                              getController.animationController.forward();
                            },
                            child: TextField(
                              enabled: false,
                              controller: getController.dietController,
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
                                      color: Color(0xffe0e0e0),
                                      width: 1.sp.adjustedSp),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(4.0.sp.adjustedSp),
                                  borderSide: BorderSide(
                                      color: Color(0xffe0e0e0),
                                      width: 1.sp.adjustedSp),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(4.0.sp.adjustedSp),
                                  borderSide: BorderSide(
                                      color: Color(0xffe0e0e0),
                                      width: 1.sp.adjustedSp),
                                ),
                                labelText: "Diet",
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
                            width: 16.sp.adjustedSp,
                          ),
                          GestureDetector(
                            onTap: () {
                              getController.selectedOptionIndex.value = 5;
                              getController.animationController.forward();
                            },
                            child: TextField(
                              enabled: false,
                              controller: getController.specialCaseController,
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
                                      color: Color(0xffe0e0e0),
                                      width: 1.sp.adjustedSp),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(4.0.sp.adjustedSp),
                                  borderSide: BorderSide(
                                      color: Color(0xffe0e0e0),
                                      width: 1.sp.adjustedSp),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(4.0.sp.adjustedSp),
                                  borderSide: BorderSide(
                                      color: Color(0xffe0e0e0),
                                      width: 1.sp.adjustedSp),
                                ),
                                labelText: "Special Case",
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
                            width: 16.sp.adjustedSp,
                          ),
                          GestureDetector(
                            onTap: () {
                              getController.selectedOptionIndex.value = 6;
                              getController.animationController.forward();
                            },
                            child: TextField(
                              enabled: false,
                              controller: getController.disabilityController,
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
                                      color: Color(0xffe0e0e0),
                                      width: 1.sp.adjustedSp),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(4.0.sp.adjustedSp),
                                  borderSide: BorderSide(
                                      color: Color(0xffe0e0e0),
                                      width: 1.sp.adjustedSp),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(4.0.sp.adjustedSp),
                                  borderSide: BorderSide(
                                      color: Color(0xffe0e0e0),
                                      width: 1.sp.adjustedSp),
                                ),
                                labelText: "Disability",
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
                                contentPadding: EdgeInsets.fromLTRB(
                                    12.sp.adjustedSp,
                                    8.sp.adjustedSp,
                                    12.sp.adjustedSp,
                                    8),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16.sp.adjustedSp,
                            width: 16.sp.adjustedSp,
                          ),
                          MaterialButton(
                            onPressed: () {
                              getController.submitPhysicalAttributesAndEatingHabits();
                            },
                            color: Color(0xffac0f11),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
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
                              right: -75.w *
                                  (1 - getController.animationController.value),
                              child: SideOptionDrawer(
                                options: getController
                                    .selectedOption[getController
                                        .selectedOptionIndex.value]!
                                    .value,
                                onOptionSelected: (index) {
                                  switch (
                                      getController.selectedOptionIndex.value) {
                                    case 1:
                                      //blood group
                                      getController.selectedBloodGroup.value =
                                          getController.bloodGroup[index];
                                      getController.bloodGroupController.text =
                                          getController
                                              .selectedBloodGroup.value;
                                      getController.animationController
                                          .reverse();
                                      break;
                                    case 2:
                                      //complexion
                                      getController.selectedComplexion.value =
                                          getController.complexion[index];
                                      getController.complexionController.text =
                                          getController
                                              .selectedComplexion.value;
                                      getController.animationController
                                          .reverse();
                                      break;
                                    case 3:
                                      // body type
                                      getController.selectedBodyType.value =
                                          getController.bodyType[index];
                                      getController.bodyTypeController.text =
                                          getController.selectedBodyType.value;
                                      getController.animationController
                                          .reverse();
                                      break;
                                    case 4:
                                      //diet
                                      getController.selectedDiet.value =
                                          getController.diet[index];
                                      getController.dietController.text =
                                          getController.selectedDiet.value;
                                      getController.animationController
                                          .reverse();
                                      break;
                                    case 5:
                                      //special case
                                      getController.selectedSpecialCase.value =
                                          getController.specialCase[index];
                                      getController.specialCaseController.text =
                                          getController
                                              .selectedSpecialCase.value;
                                      getController.animationController
                                          .reverse();
                                      break;
                                    case 6:
                                      //disability
                                      getController.selectedDisability.value =
                                          getController.disability[index];
                                      getController.disabilityController.text =
                                          getController
                                              .selectedDisability.value;
                                      getController.animationController
                                          .reverse();
                                      break;
                                    default:
                                      break;
                                  }
                                },
                              ));
                        })
                  ],
                ),
              );
            }
            return Scaffold();
          }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:sizer/sizer.dart';

import '../../authentication/login/ui/side_option_drawer.dart';
import '../get_controllers/education_occupation_get_controller.dart';

class EducationOccupationEditPage extends StatelessWidget {
  EducationOccupationEditPage({super.key});

  EducationOccupationGetController getController =
      Get.put(EducationOccupationGetController());

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
                              vertical: 8.sp.adjustedSp,
                              horizontal: 16.sp.adjustedSp),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  getController.selectedOptionIndex.value = 1;
                                  getController.animationController.forward();
                                },
                                child: TextField(
                                  enabled: false,
                                  controller: getController.educationController,
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
                                    labelText: "Education",
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
                              TextField(
                                controller:
                                    getController.educationDetailsController,
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
                                  labelText: "Education Details",
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
                                  getController.selectedOptionIndex.value = 2;
                                  getController.animationController.forward();
                                },
                                child: TextField(
                                  enabled: false,
                                  controller:
                                      getController.employmentTypeController,
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
                                    labelText: "Employment Type",
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
                              TextField(
                                controller:
                                getController.occupationController,
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
                                  labelText: "Occupation",
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
                              TextField(
                                controller:
                                getController.occupationDetailsController,
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
                                  labelText: "Occupation Details",
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
                                  getController.selectedOptionIndex.value = 3;
                                  getController.animationController.forward();
                                },
                                child: TextField(
                                  enabled: false,
                                  controller:
                                  getController.annualIncomeController,
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
                                    labelText: "Annual Income",
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
                              MaterialButton(
                                onPressed: () {
                                  getController.submitEducationOccupation();
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
                                                  .selectedEducation.value =
                                              getController.education[index];
                                          getController
                                                  .educationController.text =
                                              getController
                                                  .selectedEducation.value;
                                          getController.animationController
                                              .reverse();
                                          break;
                                        case 2:
                                          getController.selectedEmploymentType
                                                  .value =
                                              getController.employmentType[index];
                                          getController.employmentTypeController
                                                  .text =
                                              getController
                                                  .selectedEmploymentType.value;
                                          getController.animationController
                                              .reverse();
                                          break;
                                        case 3:
                                          getController.selectedAnnualIncome
                                              .value =
                                          getController.annualIncome[index];
                                          getController.annualIncomeController
                                              .text =
                                              getController
                                                  .selectedAnnualIncome.value;
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
                return Container();
              })),
    );
  }
}

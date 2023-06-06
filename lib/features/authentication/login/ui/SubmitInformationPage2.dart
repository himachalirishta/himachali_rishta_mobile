import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/features/authentication/login/ui/side_option_drawer.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/app_colors.dart';
import '../get_controller/submit_information_2_get_controller.dart';

class SubmitInformationPage2 extends StatelessWidget {
  final String accessToken;

  SubmitInformationPage2({Key? key, required this.accessToken})
      : super(key: key);

  SubmitInformation2GetController getController =
      Get.put(SubmitInformation2GetController());

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: Stream.periodic(const Duration(seconds: 1), (_) {
          return SizerUtil.orientation == Orientation.landscape;
        }),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth: snapshot.data! ? 700 : 100.w.adjustedW),
              child: WillPopScope(
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
                  body: Stack(
                    children: [
                      SizedBox(
                        height: 100.h,
                        child: Column(
                          children: [
                            Container(
                              height: 8.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: const BorderRadius.only(
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.sp.adjustedSp,
                                  vertical: 8.0.sp.adjustedSp),
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
                                      //gender, religion, caste, marital status, posting this profile for
                                      case 1:
                                        getController
                                                .selectedOccupationType.value =
                                            getController.occupationType[index];
                                        getController.animationController
                                            .reverse();
                                        break;
                                      case 2:
                                        getController.selectedEducation.value =
                                            getController.education[index];
                                        getController.animationController
                                            .reverse();
                                        break;

                                      case 3:
                                        getController.selectedCountry.value =
                                            getController.country[index];
                                        getController.loadStates();
                                        getController.animationController
                                            .reverse();
                                        break;
                                      case 4:
                                        getController.selectedState.value =
                                            getController.state[index];
                                        getController.loadCities();
                                        getController.animationController
                                            .reverse();
                                        break;
                                      case 5:
                                        getController.selectedCity.value =
                                            getController.city[index];
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
                ),
              ),
            );
          }
          return Container();
        });
  }

  List<Widget> formData(BuildContext context) {
    return [
      SizedBox(
        height: 16.sp,
        width: 16.sp,
      ),
      Text(
        'Height',
        style: TextStyle(
          fontSize: 12.sp,
          color: AppColors.secondaryLight,
          fontWeight: FontWeight.bold,
        ),
      ),
      Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: getController.ftController,
              obscureText: false,
              textAlign: TextAlign.start,
              keyboardType: TextInputType.number,
              maxLines: 1,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                fontSize: 12.sp.adjustedSp,
                color: const Color(0xff000000),
              ),
              decoration: InputDecoration(
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                  borderSide: BorderSide(
                      color: const Color(0x55757575), width: 1.sp.adjustedSp),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                  borderSide: BorderSide(
                      color: const Color(0x55757575), width: 1.sp.adjustedSp),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                  borderSide: BorderSide(
                      color: const Color(0x55757575), width: 1.sp.adjustedSp),
                ),
                labelText: "ft.",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 12.sp.adjustedSp,
                  color: const Color(0xff000000),
                ),
                filled: false,
                fillColor: const Color(0xfff2f2f3),
                isDense: false,
                contentPadding: EdgeInsets.fromLTRB(12.sp.adjustedSp,
                    8.sp.adjustedSp, 12.sp.adjustedSp, 8.sp.adjustedSp),
              ),
            ),
          ),
          SizedBox(
            width: 8.sp,
          ),
          Expanded(
            child: TextFormField(
              controller: getController.ftController,
              obscureText: false,
              textAlign: TextAlign.start,
              maxLines: 1,
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                fontSize: 12.sp.adjustedSp,
                color: const Color(0xff000000),
              ),
              decoration: InputDecoration(
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                  borderSide: BorderSide(
                      color: const Color(0x55757575), width: 1.sp.adjustedSp),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                  borderSide: BorderSide(
                      color: const Color(0x55757575), width: 1.sp.adjustedSp),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                  borderSide: BorderSide(
                      color: const Color(0x55757575), width: 1.sp.adjustedSp),
                ),
                labelText: "in.",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 12.sp.adjustedSp,
                  color: const Color(0xff000000),
                ),
                filled: false,
                fillColor: const Color(0xfff2f2f3),
                isDense: false,
                contentPadding: EdgeInsets.fromLTRB(12.sp.adjustedSp,
                    8.sp.adjustedSp, 12.sp.adjustedSp, 8.sp.adjustedSp),
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 16.sp.adjustedSp,
        width: 16.sp.adjustedSp,
      ),
      GestureDetector(
        onTap: () {
          getController.selectedOptionIndex.value = 1;
          getController.animationController.forward();
        },
        child: Container(
            width: 100.w.adjustedH,
            height: 50.sp.adjustedSp,
            padding: EdgeInsets.symmetric(
                horizontal: 8.sp.adjustedSp, vertical: 4.sp.adjustedSp),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              border: Border.all(
                  color: const Color(0x54757575), width: 1.sp.adjustedSp),
              borderRadius: BorderRadius.circular(4.sp.adjustedSp),
            ),
            child: Row(
              children: [
                Expanded(child: Obx(() {
                  return Text(
                    getController.selectedOccupationType.value,
                    style: TextStyle(fontSize: 12.sp.adjustedSp),
                  );
                })),
                Icon(
                  Icons.chevron_right,
                  color: const Color(0xff616161),
                  size: 15.sp.adjustedSp,
                )
              ],
            )),
      ),
      SizedBox(
        height: 16.sp,
        width: 16.sp,
      ),
      GestureDetector(
        onTap: () {
          getController.selectedOptionIndex.value = 2;
          getController.animationController.forward();
        },
        child: Container(
            width: 100.w,
            height: 50.sp.adjustedSp,
            padding: EdgeInsets.symmetric(
                horizontal: 8.sp.adjustedSp, vertical: 4.sp.adjustedSp),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              border: Border.all(
                  color: const Color(0x55757575), width: 1.sp.adjustedSp),
              borderRadius: BorderRadius.circular(4.sp.adjustedSp),
            ),
            child: Row(
              children: [
                Expanded(child: Obx(() {
                  return Text(
                    getController.selectedEducation.value,
                    style: TextStyle(fontSize: 12.sp.adjustedSp),
                  );
                })),
                Icon(
                  Icons.chevron_right,
                  color: const Color(0xff616161),
                  size: 15.sp.adjustedSp,
                )
              ],
            )),
      ),
      SizedBox(
        height: 16.sp,
        width: 16.sp,
      ),
      GestureDetector(
        onTap: () {
          getController.selectedOptionIndex.value = 3;
          getController.animationController.forward();
        },
        child: Container(
            width: 100.w.adjustedH,
            height: 50.sp.adjustedSp,
            padding: EdgeInsets.symmetric(
                horizontal: 8.sp.adjustedSp, vertical: 4.sp.adjustedSp),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              border: Border.all(
                  color: const Color(0x54757575), width: 1.sp.adjustedSp),
              borderRadius: BorderRadius.circular(4.sp.adjustedSp),
            ),
            child: Row(
              children: [
                Expanded(child: Obx(() {
                  return Text(
                    getController.selectedCountry.value,
                    style: TextStyle(fontSize: 12.sp.adjustedSp),
                  );
                })),
                Icon(
                  Icons.chevron_right,
                  color: const Color(0xff616161),
                  size: 15.sp.adjustedSp,
                )
              ],
            )),
      ),
      SizedBox(
        height: 16.sp,
        width: 16.sp,
      ),
      GestureDetector(
        onTap: () {
          getController.selectedOptionIndex.value = 4;
          getController.animationController.forward();
        },
        child: Container(
            width: 100.w.adjustedH,
            height: 50.sp.adjustedSp,
            padding: EdgeInsets.symmetric(
                horizontal: 8.sp.adjustedSp, vertical: 4.sp.adjustedSp),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              border: Border.all(
                  color: const Color(0x54757575), width: 1.sp.adjustedSp),
              borderRadius: BorderRadius.circular(4.sp.adjustedSp),
            ),
            child: Row(
              children: [
                Expanded(child: Obx(() {
                  return Text(
                    getController.selectedState.value,
                    style: TextStyle(fontSize: 12.sp.adjustedSp),
                  );
                })),
                Icon(
                  Icons.chevron_right,
                  color: const Color(0xff616161),
                  size: 15.sp.adjustedSp,
                )
              ],
            )),
      ),
      SizedBox(
        height: 16.sp,
        width: 16.sp,
      ),
      GestureDetector(
        onTap: () {
          getController.selectedOptionIndex.value = 5;
          getController.animationController.forward();
        },
        child: Container(
            width: 100.w.adjustedH,
            height: 50.sp.adjustedSp,
            padding: EdgeInsets.symmetric(
                horizontal: 8.sp.adjustedSp, vertical: 4.sp.adjustedSp),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              border: Border.all(
                  color: const Color(0x54757575), width: 1.sp.adjustedSp),
              borderRadius: BorderRadius.circular(4.sp.adjustedSp),
            ),
            child: Row(
              children: [
                Expanded(child: Obx(() {
                  return Text(
                    getController.selectedCity.value,
                    style: TextStyle(fontSize: 12.sp.adjustedSp),
                  );
                })),
                Icon(
                  Icons.chevron_right,
                  color: const Color(0xff616161),
                  size: 15.sp.adjustedSp,
                )
              ],
            )),
      ),
      SizedBox(
        height: 16.sp,
        width: 16.sp,
      ),
      TextFormField(
        controller: getController.homeTownController,
        obscureText: false,
        textAlign: TextAlign.start,
        maxLines: 1,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          fontSize: 12.sp.adjustedSp,
          color: const Color(0xff000000),
        ),
        decoration: InputDecoration(
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
            borderSide: BorderSide(
                color: const Color(0x55757575), width: 1.sp.adjustedSp),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
            borderSide: BorderSide(
                color: const Color(0x55757575), width: 1.sp.adjustedSp),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
            borderSide: BorderSide(
                color: const Color(0x55757575), width: 1.sp.adjustedSp),
          ),
          labelText: "Home Town",
          labelStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: 12.sp.adjustedSp,
            color: const Color(0xff000000),
          ),
          filled: false,
          fillColor: const Color(0xfff2f2f3),
          isDense: false,
          contentPadding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
        ),
      ),
      SizedBox(
        height: 16.sp,
        width: 16.sp,
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
                fontSize: 12.sp.adjustedSp,
                color: const Color(0xff000000),
              ),
              decoration: InputDecoration(
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                  borderSide: BorderSide(
                      color: const Color(0x55757575), width: 1.sp.adjustedSp),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                  borderSide: BorderSide(
                      color: const Color(0x55757575), width: 1.sp.adjustedSp),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                  borderSide: BorderSide(
                      color: const Color(0x55757575), width: 1.sp.adjustedSp),
                ),
                labelText: "Birth Place",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 12.sp.adjustedSp,
                  color: const Color(0xff000000),
                ),
                filled: false,
                fillColor: const Color(0xfff2f2f3),
                isDense: false,
                contentPadding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
              ),
            ),
          ),
          SizedBox(
            width: 16.sp,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                showTimePicker(context: context, initialTime: TimeOfDay.now())
                    .then((value) {
                  if (value != null) {
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
                  fontSize: 12.sp.adjustedSp,
                  color: const Color(0xff000000),
                ),
                decoration: InputDecoration(
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                    borderSide: BorderSide(
                        color: const Color(0x55757575), width: 1.sp.adjustedSp),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                    borderSide: BorderSide(
                        color: const Color(0x55757575), width: 1.sp.adjustedSp),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                    borderSide: BorderSide(
                        color: const Color(0x55757575), width: 1.sp.adjustedSp),
                  ),
                  labelText: "Birth Time",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 12.sp.adjustedSp,
                    color: const Color(0xff000000),
                  ),
                  filled: false,
                  fillColor: const Color(0xfff2f2f3),
                  isDense: false,
                  contentPadding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                ),
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 16.sp,
        width: 16.sp,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: MaterialButton(
          onPressed: () {
            getController.submitSecondStepRegistration(accessToken);
          },
          color: const Color(0xffac0f11),
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0.sp.adjustedSp),
          ),
          padding: EdgeInsets.symmetric(
              horizontal: 16.sp.adjustedSp, vertical: 8.sp.adjustedSp),
          textColor: const Color(0xff000000),
          height: 30.sp.adjustedSp,
          minWidth: 130.sp.adjustedSp,
          child: Text(
            "Proceed",
            style: TextStyle(
                fontSize: 14.sp.adjustedSp,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                color: AppColors.primaryTextColorDark),
          ),
        ),
      ),
    ];
  }
}

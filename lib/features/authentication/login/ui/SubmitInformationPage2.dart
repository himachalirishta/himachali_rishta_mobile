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
                backgroundColor: Colors.white,
                appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(0),
                  child: Container(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                body: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(
                          maxWidth: snapshot.data! ? 700 : 100.w.adjustedW),
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 100.h,
                            child: Column(
                              children: [
                                Container(
                                  height: 35.sp.adjustedSp,
                                  width: 100.w,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft:
                                              Radius.circular(8.sp.adjustedSp),
                                          bottomRight: Radius.circular(
                                              8.sp.adjustedSp))),
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
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 32.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            getController
                                                .submitSecondStepRegistration(
                                                    accessToken);
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: AppColors.green,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      4.0.sp.adjustedSp),
                                            ),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16.sp.adjustedSp,
                                                vertical: 4.sp.adjustedSp),
                                          ),
                                          child: Text(
                                            "Proceed",
                                            style: TextStyle(
                                                fontSize: 14.sp.adjustedSp,
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.normal,
                                                color: AppColors
                                                    .primaryTextColorDark),
                                          ),
                                        ),
                                      ),
                                    ],
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
                                          //gender, religion, caste, marital status, posting this profile for
                                          case 1:
                                            getController.selectedOccupationType
                                                    .value =
                                                getController
                                                    .occupationType[index];
                                            getController.animationController
                                                .reverse();
                                            break;
                                          case 2:
                                            getController
                                                    .selectedEducation.value =
                                                getController.education[index];
                                            getController.animationController
                                                .reverse();
                                            break;

                                          case 3:
                                            getController
                                                    .selectedCountry.value =
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
                  ],
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
        height: 16.sp.adjustedSp,
        width: 16.sp.adjustedSp,
      ),
      Text(
        'Height',
        style: TextStyle(
          fontSize: 10.sp.adjustedSp,
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
            width: 8.sp.adjustedSp,
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
      Text(
        'Occupation',
        style: TextStyle(
          fontSize: 10.sp.adjustedSp,
          color: AppColors.secondaryLight,
          fontWeight: FontWeight.bold,
        ),
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
        height: 16.sp.adjustedSp,
        width: 16.sp.adjustedSp,
      ),
      Text(
        'Education',
        style: TextStyle(
          fontSize: 10.sp.adjustedSp,
          color: AppColors.secondaryLight,
          fontWeight: FontWeight.bold,
        ),
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
        height: 16.sp.adjustedSp,
        width: 16.sp.adjustedSp,
      ),
      Text(
        'Country',
        style: TextStyle(
          fontSize: 10.sp.adjustedSp,
          color: AppColors.secondaryLight,
          fontWeight: FontWeight.bold,
        ),
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
        height: 16.sp.adjustedSp,
        width: 16.sp.adjustedSp,
      ),
      Text(
        'State',
        style: TextStyle(
          fontSize: 10.sp.adjustedSp,
          color: AppColors.secondaryLight,
          fontWeight: FontWeight.bold,
        ),
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
        height: 16.sp.adjustedSp,
        width: 16.sp.adjustedSp,
      ),
      Text(
        'City',
        style: TextStyle(
          fontSize: 10.sp.adjustedSp,
          color: AppColors.secondaryLight,
          fontWeight: FontWeight.bold,
        ),
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
        height: 16.sp.adjustedSp,
        width: 16.sp.adjustedSp,
      ),
      Text(
        'Home Town',
        style: TextStyle(
          fontSize: 10.sp.adjustedSp,
          color: AppColors.secondaryLight,
          fontWeight: FontWeight.bold,
        ),
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
          /*labelText: "Home Town",
          labelStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: 12.sp.adjustedSp,
            color: const Color(0xff000000),
          ),*/
          filled: false,
          fillColor: const Color(0xfff2f2f3),
          isDense: false,
          contentPadding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
        ),
      ),
      SizedBox(
        height: 16.sp.adjustedSp,
        width: 16.sp.adjustedSp,
      ),
      Text(
        'Birth Place and Time',
        style: TextStyle(
          fontSize: 10.sp.adjustedSp,
          color: AppColors.secondaryLight,
          fontWeight: FontWeight.bold,
        ),
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
            width: 16.sp.adjustedSp,
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
    ];
  }
}

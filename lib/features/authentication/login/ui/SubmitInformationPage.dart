///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/core/app_colors.dart';
import 'package:himachali_rishta/features/authentication/login/get_controller/submit_information_get_controller.dart';
import 'package:himachali_rishta/features/authentication/login/ui/side_option_drawer.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:sizer/sizer.dart';

class SubmitInformationPage extends StatelessWidget {
  final String accessToken;
  SubmitInformationGetController getController =
      Get.put(SubmitInformationGetController());

  SubmitInformationPage({
    super.key,
    required this.accessToken,
  });

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
                                    fontSize: 16.sp.adjustedSp,
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
                                  vertical: 8.sp.adjustedSp),
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
                                        getController.selectedGender.value =
                                            getController.gender[index];
                                        getController.animationController
                                            .reverse();
                                        break;
                                      case 2:
                                        getController.selectedReligion.value =
                                            getController.religion[index];
                                        getController.getCastes();
                                        getController.animationController
                                            .reverse();

                                        break;
                                      case 3:
                                        getController.selectedCaste.value =
                                            getController.caste[index];
                                        getController.animationController
                                            .reverse();
                                        break;
                                      case 4:
                                        getController
                                                .selectedMaritalStatus.value =
                                            getController.maritalStatus[index];
                                        getController.animationController
                                            .reverse();
                                        break;
                                      case 5:
                                        getController
                                                .selectedNoOfChildren.value =
                                            getController.noOfChildren[index];
                                        getController.animationController
                                            .reverse();
                                        break;
                                      case 6:
                                        getController
                                                .selectedPostingThisProfileFor
                                                .value =
                                            getController
                                                .postingThisProfileFor[index];
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
      TextField(
        controller: getController.nameController,
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
            borderSide:
                BorderSide(color: const Color(0x55757575), width: 1.sp.adjustedSp),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
            borderSide:
                BorderSide(color: const Color(0x55757575), width: 1.sp.adjustedSp),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
            borderSide:
                BorderSide(color: const Color(0x55757575), width: 1.sp.adjustedSp),
          ),
          labelText: "Bride/Groom's Name",
          labelStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: 12.sp.adjustedSp,
            color: const Color(0xff000000),
          ),
          filled: false,
          fillColor: const Color(0xfff2f2f3),
          isDense: false,
          contentPadding: EdgeInsets.fromLTRB(12.sp.adjustedSp, 8.sp.adjustedSp,
              12.sp.adjustedSp, 8.sp.adjustedSp),
        ),
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
            width: MediaQuery.of(context).size.width,
            height: 45.sp.adjustedSp,
            padding: EdgeInsets.symmetric(
                horizontal: 8.sp.adjustedSp, vertical: 4.sp.adjustedSp),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              border:
                  Border.all(color: const Color(0x54757575), width: 1.sp.adjustedSp),
              borderRadius: BorderRadius.circular(4.sp.adjustedSp),
            ),
            child: Row(
              children: [
                Expanded(child: Obx(() {
                  return Text(
                    getController.selectedGender.value,
                    style: TextStyle(fontSize: 10.sp.adjustedSp),
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
      GestureDetector(
        onTap: () {
          getController.selectedOptionIndex.value = 2;
          getController.animationController.forward();
        },
        child: Container(
            width: 100.w.adjustedW,
            height: 45.sp.adjustedSp,
            padding: EdgeInsets.symmetric(
                horizontal: 8.sp.adjustedSp, vertical: 4.sp.adjustedSp),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              border:
                  Border.all(color: const Color(0x55757575), width: 1.sp.adjustedSp),
              borderRadius: BorderRadius.circular(4.sp.adjustedSp),
            ),
            child: Row(
              children: [
                Expanded(child: Obx(() {
                  return Text(
                    getController.selectedReligion.value,
                    style: TextStyle(fontSize: 10.sp.adjustedSp),
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
      GestureDetector(
        onTap: () {
          getController.selectedOptionIndex.value = 3;
          getController.animationController.forward();
        },
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: 45.sp.adjustedSp,
            padding: EdgeInsets.symmetric(
                horizontal: 8.sp.adjustedSp, vertical: 4.sp.adjustedSp),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              border:
                  Border.all(color: const Color(0x55757575), width: 1.sp.adjustedSp),
              borderRadius: BorderRadius.circular(4.sp.adjustedSp),
            ),
            child: Row(
              children: [
                Expanded(child: Obx(() {
                  return Text(
                    getController.selectedCaste.value,
                    style: TextStyle(fontSize: 10.sp.adjustedSp),
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
      GestureDetector(
        onTap: () {
          getController.selectedOptionIndex.value = 4;
          getController.animationController.forward();
        },
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: 45.sp.adjustedSp,
            padding: EdgeInsets.symmetric(
                horizontal: 8.sp.adjustedSp, vertical: 4.sp.adjustedSp),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              border:
                  Border.all(color: const Color(0x53757575), width: 1.sp.adjustedSp),
              borderRadius: BorderRadius.circular(4.sp.adjustedSp),
            ),
            child: Row(
              children: [
                Expanded(child: Obx(() {
                  return Text(
                    getController.selectedMaritalStatus.value,
                    style: TextStyle(fontSize: 10.sp.adjustedSp),
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
      Obx(() {
        return Visibility(
          visible: getController.selectedMaritalStatus.value !=
              getController.maritalStatus[1],
          child: SizedBox(
            height: 16.sp.adjustedSp,
            width: 16.sp.adjustedSp,
          ),
        );
      }),
      Obx(() {
        return Visibility(
          visible: getController.selectedMaritalStatus.value !=
              getController.maritalStatus[1],
          child: GestureDetector(
            onTap: () {
              getController.selectedOptionIndex.value = 5;
              getController.animationController.forward();
            },
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: 45.sp.adjustedSp,
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
                        getController.selectedNoOfChildren.value,
                        style: TextStyle(fontSize: 10.sp.adjustedSp),
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
        );
      }),
      SizedBox(
        height: 16.sp.adjustedSp,
        width: 16.sp.adjustedSp,
      ),
      GestureDetector(
        onTap: () {
          getController.selectedOptionIndex.value = 6;
          getController.animationController.forward();
        },
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: 45.sp.adjustedSp,
            padding: EdgeInsets.symmetric(
                horizontal: 8.sp.adjustedSp, vertical: 4.sp.adjustedSp),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              border:
                  Border.all(color: const Color(0x53757575), width: 1.sp.adjustedSp),
              borderRadius: BorderRadius.circular(4.sp.adjustedSp),
            ),
            child: Row(
              children: [
                Expanded(child: Obx(() {
                  return Text(
                    getController.selectedPostingThisProfileFor.value,
                    style: TextStyle(fontSize: 10.sp.adjustedSp),
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
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "Select Date of Birth",
            textAlign: TextAlign.start,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              fontSize: 10.sp.adjustedSp,
              color: const Color(0xff000000),
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 1,
            child: TextField(
              controller: getController.dayController,
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
                  borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                  borderSide: BorderSide(
                      color: const Color(0x54757575), width: 1.sp.adjustedSp),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                  borderSide: BorderSide(
                      color: const Color(0x54757575), width: 1.sp.adjustedSp),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                  borderSide: BorderSide(
                      color: const Color(0x54757575), width: 1.sp.adjustedSp),
                ),
                labelText: "Day",
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
            height: 16.sp.adjustedSp,
            width: 16.sp.adjustedSp,
          ),
          Expanded(
            flex: 1,
            child: TextField(
              controller: getController.monthController,
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
                  borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                  borderSide: BorderSide(
                      color: const Color(0x53757575), width: 1.sp.adjustedSp),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                  borderSide: BorderSide(
                      color: const Color(0x53757575), width: 1.sp.adjustedSp),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                  borderSide: BorderSide(
                      color: const Color(0x53757575), width: 1.sp.adjustedSp),
                ),
                labelText: "Month",
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
            height: 16.sp.adjustedSp,
            width: 16.sp.adjustedSp,
          ),
          Expanded(
            flex: 1,
            child: TextField(
              controller: getController.yearController,
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
                  borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                  borderSide: BorderSide(
                      color: const Color(0x53757575), width: 1.sp.adjustedSp),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                  borderSide: BorderSide(
                      color: const Color(0x53757575), width: 1.sp.adjustedSp),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                  borderSide: BorderSide(
                      color: const Color(0x53757575), width: 1.sp.adjustedSp),
                ),
                labelText: "Year",
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
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: MaterialButton(
          onPressed: () {
            getController.submitFirstStepRegistration(accessToken);
          },
          color: const Color(0xffac0f11),
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0.sp.adjustedSp),
          ),
          padding: EdgeInsets.symmetric(
              horizontal: 16.sp.adjustedSp, vertical: 8.sp.adjustedSp),
          textColor: const Color(0xff000000),
          height: 38.sp.adjustedSp,
          minWidth: 138.sp.adjustedSp,
          child: Text(
            "Next",
            style: TextStyle(
                fontSize: 16.sp.adjustedSp,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                color: AppColors.primaryTextColorDark),
          ),
        ),
      ),
    ];
  }
}

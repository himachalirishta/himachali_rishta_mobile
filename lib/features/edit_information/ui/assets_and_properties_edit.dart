import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/features/edit_information/get_controllers/assets_and_properties_get_controller.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:sizer/sizer.dart';

import '../../authentication/login/ui/side_option_drawer.dart';

class AssetsAndPropertiesEdit extends StatelessWidget {
  AssetsAndPropertiesEdit({super.key});

  AssetsAndPropertiesGetController getController =
      Get.put(AssetsAndPropertiesGetController());

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
                          vertical: 8.0.sp.adjustedSp,
                        ),
                        child: ListView(
                          children: [
                            GestureDetector(
                              onTap: () {
                                getController.selectedOptionIndex.value = 1;
                                getController.animationController.forward();
                              },
                              child: TextField(
                                enabled: false,
                                controller: getController.ownHouseController,
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
                                  labelText: "Own House",
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
                              width: 16.sp.adjustedSp,
                            ),
                            GestureDetector(
                              onTap: () {
                                getController.selectedOptionIndex.value = 2;
                                getController.animationController.forward();
                              },
                              child: TextField(
                                enabled: false,
                                controller: getController.ownCarController,
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
                                  labelText: "Own Car",
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
                                    getController.ownLandAgricultureController,
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
                                  labelText: "Own Land Agriculture",
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
                              width: 16.sp.adjustedSp,
                            ),
                            //own commercial land
                            GestureDetector(
                              onTap: () {
                                getController.selectedOptionIndex.value = 4;
                                getController.animationController.forward();
                              },
                              child: TextField(
                                enabled: false,
                                controller:
                                    getController.ownCommercialLandController,
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
                                  labelText: "Own Land Commercial",
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
                              width: 16.sp.adjustedSp,
                            ),
                            //own any business
                            GestureDetector(
                              onTap: () {
                                getController.selectedOptionIndex.value = 5;
                                getController.animationController.forward();
                              },
                              child: TextField(
                                enabled: false,
                                controller:
                                    getController.ownAnyBusinessController,
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
                                  labelText: "Own Any Business",
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
                              height: 16.sp.adjustedSp,
                              width: 16.sp.adjustedSp,
                            ),
                            MaterialButton(
                              onPressed: () {
                                getController.submitAssetsAndProperties();
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
                                        //own house
                                        getController.selectedOwnHouse.value =
                                            getController.ownHouse[index];
                                        getController.ownHouseController.text =
                                            getController
                                                .selectedOwnHouse.value;
                                        getController.animationController
                                            .reverse();
                                        break;
                                      case 2:
                                        //own car
                                        getController.selectedOwnCar.value =
                                            getController.ownCar[index];
                                        getController.ownCarController.text =
                                            getController.selectedOwnCar.value;
                                        getController.animationController
                                            .reverse();
                                        break;
                                      case 3:
                                        // own Land agriculture
                                        getController.selectedOwnLandAgriculture
                                                .value =
                                            getController
                                                .ownLandAgriculture[index];
                                        getController
                                                .ownLandAgricultureController
                                                .text =
                                            getController
                                                .selectedOwnLandAgriculture
                                                .value;
                                        getController.animationController
                                            .reverse();
                                        break;
                                      case 4:
                                        //own commercial land
                                        getController.selectedOwnCommercialLand
                                                .value =
                                            getController
                                                .ownCommercialLand[index];
                                        getController
                                                .ownCommercialLandController
                                                .text =
                                            getController
                                                .selectedOwnCommercialLand
                                                .value;
                                        getController.animationController
                                            .reverse();
                                        break;
                                      case 5:
                                        //own any business
                                        getController
                                                .selectedOwnAnyBusiness.value =
                                            getController.ownAnyBusiness[index];
                                        getController
                                                .ownAnyBusinessController.text =
                                            getController
                                                .selectedOwnAnyBusiness.value;
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
              return Scaffold(
                appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(0),
                  child: Container(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              );
            }),
      ),
    );
  }
}

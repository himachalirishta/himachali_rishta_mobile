///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../core/app_colors.dart';
import '../../authentication/login/ui/side_option_drawer.dart';
import '../get_controllers/search_page_get_controller.dart';

class SearchPage extends StatelessWidget {
  SearchPageGetController getController = Get.put(SearchPageGetController());

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
            Padding(
              padding: EdgeInsets.all(6.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Card(
                    margin: EdgeInsets.all(4.0.sp),
                    color: Color(0xffffffff),
                    shadowColor: Color(0xff000000),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0.sp),
                      side: BorderSide(color: Color(0x4d9e9e9e), width: 1.sp),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: TextEditingController(),
                            obscureText: false,
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 12.sp,
                              color: Color(0xff000000),
                            ),
                            decoration: InputDecoration(
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0.sp),
                                borderSide: BorderSide(
                                    color: Color(0xffffffff), width: 0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0.sp),
                                borderSide: BorderSide(
                                    color: Color(0xffffffff), width: 0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0.sp),
                                borderSide: BorderSide(
                                    color: Color(0xffffffff), width: 0),
                              ),
                              hintText: "Enter Matri ID",
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 12.sp,
                                color: Color(0xff000000),
                              ),
                              filled: false,
                              fillColor: Color(0xfff2f2f3),
                              isDense: false,
                              contentPadding:
                                  EdgeInsets.fromLTRB(12.sp, 8.sp, 12.sp, 8.sp),
                              prefixIcon: Icon(Icons.search,
                                  color: Color(0xff212435), size: 24.sp),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4.0.sp),
                          child: MaterialButton(
                            onPressed: () {},
                            color: AppColors.secondaryLight,
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0.sp),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.sp, vertical: 8.sp),
                            textColor: Color(0xff000000),
                            height: 38.sp,
                            minWidth: 108.sp,
                            child: Text(
                              "Search",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  color: AppColors.primaryTextColorDark),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.sp,
                    width: 16.sp,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.zero,
                      padding: EdgeInsets.all(12.sp),
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8.0.sp),
                        border:
                            Border.all(color: Color(0x4d9e9e9e), width: 1.sp),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "OR",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 12.sp,
                                color: Color(0xffac0f11),
                              ),
                            ),
                            SizedBox(
                              height: 16.sp,
                              width: 16.sp,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "Select age in years",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 10.sp,
                                    color: Color(0xff000000),
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
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.sp, vertical: 4.sp),
                                      decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                        border: Border.all(
                                            color: Color(0xff616161),
                                            width: 1.sp),
                                        borderRadius:
                                            BorderRadius.circular(8.sp),
                                      ),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton(
                                          value: "22",
                                          items: ["22"]
                                              .map<DropdownMenuItem<String>>(
                                                  (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                          style: TextStyle(
                                            color: Color(0xff000000),
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                          ),
                                          onChanged: (value) {},
                                          elevation: 8,
                                          isExpanded: true,
                                        ),
                                      )),
                                ),
                                SizedBox(
                                  height: 16.sp,
                                  width: 8.sp,
                                ),
                                Text(
                                  "TO",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 10.sp,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                SizedBox(
                                  height: 16.sp,
                                  width: 8.sp,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.sp, vertical: 4.sp),
                                      decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                        border: Border.all(
                                            color: Color(0xff616161),
                                            width: 1.sp),
                                        borderRadius:
                                            BorderRadius.circular(8.sp),
                                      ),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton(
                                          value: "55",
                                          items: ["55"]
                                              .map<DropdownMenuItem<String>>(
                                                  (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                          style: TextStyle(
                                            color: Color(0xff000000),
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                          ),
                                          onChanged: (value) {},
                                          elevation: 8,
                                          isExpanded: true,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16.sp,
                              width: 16.sp,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "Height",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 10.sp,
                                    color: Color(0xff000000),
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
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.sp, vertical: 4.sp),
                                      decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                        border: Border.all(
                                            color: Color(0xff616161),
                                            width: 1.sp),
                                        borderRadius:
                                            BorderRadius.circular(8.sp),
                                      ),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton(
                                          value: "4ft 0in",
                                          items: ["4ft 0in"]
                                              .map<DropdownMenuItem<String>>(
                                                  (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                          style: TextStyle(
                                            color: Color(0xff000000),
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                          ),
                                          onChanged: (value) {},
                                          elevation: 8,
                                          isExpanded: true,
                                        ),
                                      )),
                                ),
                                SizedBox(
                                  height: 16.sp,
                                  width: 8.sp,
                                ),
                                Text(
                                  "TO",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 10.sp,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                SizedBox(
                                  height: 16.sp,
                                  width: 8.sp,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.sp, vertical: 4.sp),
                                      decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                        border: Border.all(
                                            color: Color(0xff616161),
                                            width: 1.sp),
                                        borderRadius:
                                            BorderRadius.circular(8.sp),
                                      ),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton(
                                          value: "6ft 0in",
                                          items: ["6ft 0in"]
                                              .map<DropdownMenuItem<String>>(
                                                  (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                          style: TextStyle(
                                            color: Color(0xff000000),
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                          ),
                                          onChanged: (value) {},
                                          elevation: 8,
                                          isExpanded: true,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16.sp,
                              width: 16.sp,
                            ),
                            GestureDetector(
                              onTap: () {
                                getController.animationController.forward();
                                getController.selectedOptionIndex.value = 1;
                              },
                              child: Container(
                                margin: EdgeInsets.zero,
                                padding: EdgeInsets.all(6.sp),
                                decoration: BoxDecoration(
                                  color: Color(0xffffffff),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(8.0.sp),
                                  border: Border.all(
                                      color: Color(0xff616161), width: 1.sp),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Select Religion",
                                                textAlign: TextAlign.start,
                                                overflow: TextOverflow.clip,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 10.sp,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Obx(() {
                                                return Text(
                                                  getController
                                                      .selectedReligion.value,
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 12.sp,
                                                    color: Color(0xff000000),
                                                  ),
                                                );
                                              }),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 12.sp,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 16.sp,
                              width: 16.sp,
                            ),
                            GestureDetector(
                              onTap: () {
                                getController.animationController.forward();
                                getController.selectedOptionIndex.value = 2;
                              },
                              child: Container(
                                margin: EdgeInsets.zero,
                                padding: EdgeInsets.all(6.sp),
                                decoration: BoxDecoration(
                                  color: Color(0xffffffff),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(8.0.sp),
                                  border: Border.all(
                                      color: Color(0xff616161), width: 1.sp),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Select Caste",
                                                textAlign: TextAlign.start,
                                                overflow: TextOverflow.clip,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 10.sp,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Obx(() {
                                                return Text(
                                                  getController
                                                      .selectedCaste.value,
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 12.sp,
                                                    color: Color(0xff000000),
                                                  ),
                                                );
                                              }),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 12.sp,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 16.sp,
                              width: 16.sp,
                            ),
                            GestureDetector(
                              onTap: () {
                                getController.animationController.forward();
                                getController.selectedOptionIndex.value = 3;
                              },
                              child: Container(
                                margin: EdgeInsets.zero,
                                padding: EdgeInsets.all(6.sp),
                                decoration: BoxDecoration(
                                  color: Color(0xffffffff),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(8.0.sp),
                                  border: Border.all(
                                      color: Color(0xff616161), width: 1.sp),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Marital Status",
                                                textAlign: TextAlign.start,
                                                overflow: TextOverflow.clip,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 10.sp,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Obx(() {
                                                return Text(
                                                  getController
                                                      .selectedMaritalStatus
                                                      .value,
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 12.sp,
                                                    color: Color(0xff000000),
                                                  ),
                                                );
                                              }),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 12.sp,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
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
                              getController.selectedReligion.value =
                                  getController.religion[index];
                              break;

                            default:
                              break;
                          }
                        },
                      ));
                })
          ],
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(4.0.sp),
              child: MaterialButton(
                onPressed: () {},
                color: AppColors.alternate,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0.sp),
                ),
                padding:
                    EdgeInsets.symmetric(horizontal: 16.sp, vertical: 8.sp),
                textColor: Color(0xff000000),
                height: 38.sp,
                minWidth: 138.sp,
                child: Text(
                  "Search",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      color: AppColors.primaryTextColorDark),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

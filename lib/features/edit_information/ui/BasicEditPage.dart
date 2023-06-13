///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/helpers/date_time_helper.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:sizer/sizer.dart';

import '../../authentication/login/ui/side_option_drawer.dart';
import '../get_controllers/basic_information_get_controller.dart';

class BasicEditPage extends StatelessWidget {
  BasicInformationGetController getController =
      Get.put(BasicInformationGetController());

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
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 8.sp.adjustedSp, horizontal: 16),
                        child: ListView(
                          children: [
                            TextField(
                              controller: getController.nameController,
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
                                labelText: "Name",
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
                                controller:
                                    getController.maritalStatusController,
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
                                  labelText: "Marital Status",
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
                                  suffixIcon: Icon(Icons.chevron_right,
                                      color: Color(0xff212435),
                                      size: 20.sp.adjustedSp),
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
                                controller: getController.religionController,
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
                                  labelText: "Religion",
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
                                  suffixIcon: Icon(Icons.chevron_right,
                                      color: Color(0xff212435),
                                      size: 20.sp.adjustedSp),
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
                                controller: getController.casteController,
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
                                  labelText: "Caste",
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
                                  suffixIcon: Icon(Icons.chevron_right,
                                      color: Color(0xff212435),
                                      size: 20.sp.adjustedSp),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8.sp.adjustedSp,
                              width: 16.sp.adjustedSp,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Height',
                                  style: TextStyle(
                                      fontSize: 10.sp.adjustedSp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    keyboardType: TextInputType.number,
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
                                      labelText: "ft",
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
                                  width: 4.sp.adjustedSp,
                                ),
                                Expanded(
                                  child: TextField(
                                    controller: getController.inchController,
                                    obscureText: false,
                                    keyboardType: TextInputType.number,
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
                            GestureDetector(
                              onTap: () {
                                showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(1800),
                                        lastDate: DateTime.now())
                                    .then((selectedDate) {
                                  if (selectedDate != null) {
                                    getController.selectedDateOfBirth.value =
                                        selectedDate;
                                    getController.dobController.text =
                                        selectedDate.toDisplayFormat;
                                  }
                                });
                              },
                              child: TextField(
                                enabled: false,
                                controller: getController.dobController,
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
                                  labelText: "Date Of Birth",
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
                                  suffixIcon: Icon(Icons.chevron_right,
                                      color: Color(0xff212435),
                                      size: 20.sp.adjustedSp),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8.sp.adjustedSp,
                              width: 16.sp.adjustedSp,
                            ),
                            TextField(
                              keyboardType: TextInputType.number,
                              controller:
                                  getController.numberOfChildrenController,
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
                                labelText: "Number of children",
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
                                  getController.childrenLivingWithController,
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
                                labelText: "Children living with",
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
                            MaterialButton(
                              onPressed: () {
                                getController.submitBasicInformation();
                              },
                              color: Color(0xffac0f11),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(4.0.sp.adjustedSp),
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
                                                .selectedMaritalStatus.value =
                                            getController.maritalStatus[index];
                                        getController
                                                .maritalStatusController.text =
                                            getController
                                                .selectedMaritalStatus.value;
                                        getController.animationController
                                            .reverse();
                                        break;
                                      case 2:
                                        getController.selectedReligion.value =
                                            getController.religion[index];
                                        getController.religionController.text =
                                            getController
                                                .selectedReligion.value;
                                        getController.getCastes();
                                        getController.animationController
                                            .reverse();

                                        break;
                                      case 3:
                                        getController.selectedCaste.value =
                                            getController.caste[index];
                                        getController.casteController.text =
                                            getController.selectedCaste.value;
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
          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}

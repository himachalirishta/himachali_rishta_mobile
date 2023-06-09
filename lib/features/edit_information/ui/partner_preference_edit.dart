import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:sizer/sizer.dart';

import '../../authentication/login/ui/side_option_drawer.dart';
import '../get_controllers/partner_preference_get_controller.dart';

class PartnerPreferenceEdit extends StatelessWidget {
  PartnerPreferenceEdit({super.key});

  PartnerPreferenceGetController getController = Get.put(
    PartnerPreferenceGetController(),
  );

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
                            vertical: 8.0.sp.adjustedSp),
                        child: ListView(
                          children: [
                            TextField(
                              controller: getController.ageController,
                              obscureText: false,
                              keyboardType: TextInputType.number,
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
                                  borderRadius:
                                      BorderRadius.circular(4.0.sp.adjustedSp),
                                  borderSide: BorderSide(
                                      color: const Color(0xffe0e0e0),
                                      width: 1.sp.adjustedSp),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(4.0.sp.adjustedSp),
                                  borderSide: BorderSide(
                                      color: const Color(0xffe0e0e0),
                                      width: 1.sp.adjustedSp),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(4.0.sp.adjustedSp),
                                  borderSide: BorderSide(
                                      color: const Color(0xffe0e0e0),
                                      width: 1.sp.adjustedSp),
                                ),
                                labelText: "Age",
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
                                getController.getCastes();
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
                                  labelText: "Religion",
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
                                controller: getController.casteController,
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
                                  labelText: "Caste",
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
                            const Text('Height'),
                            Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    controller: getController.ftController,
                                    obscureText: false,
                                    keyboardType: TextInputType.number,
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
                                    controller: getController.inController,
                                    obscureText: false,
                                    keyboardType: TextInputType.number,
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
                            ),
                            GestureDetector(
                              onTap: () {
                                getController.selectedOptionIndex.value = 3;
                                getController.animationController.forward();
                              },
                              child: TextField(
                                enabled: false,
                                controller: getController.lookingForController,
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
                                  labelText: "Looking For",
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
                                getController.selectedOptionIndex.value = 4;
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
                                  labelText: "Education",
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
                                getController.selectedOptionIndex.value = 5;
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
                                  labelText: "Employment Type",
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
                            TextField(
                              controller: getController.occupationController,
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
                                  borderRadius:
                                      BorderRadius.circular(4.0.sp.adjustedSp),
                                  borderSide: BorderSide(
                                      color: const Color(0xffe0e0e0),
                                      width: 1.sp.adjustedSp),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(4.0.sp.adjustedSp),
                                  borderSide: BorderSide(
                                      color: const Color(0xffe0e0e0),
                                      width: 1.sp.adjustedSp),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(4.0.sp.adjustedSp),
                                  borderSide: BorderSide(
                                      color: const Color(0xffe0e0e0),
                                      width: 1.sp.adjustedSp),
                                ),
                                labelText: "Occupation",
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
                                getController.selectedOptionIndex.value = 6;
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
                                  labelText: "Annual Income",
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
                                getController.selectedOptionIndex.value = 7;
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
                                  labelText: "Manglik",
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
                                getController.selectedOptionIndex.value = 8;
                                getController.animationController.forward();
                              },
                              child: TextField(
                                enabled: false,
                                controller:
                                    getController.livingCountryController,
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
                                  labelText: "Living Country",
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
                                getController.selectedOptionIndex.value = 9;
                                getController.animationController.forward();
                              },
                              child: TextField(
                                enabled: false,
                                controller: getController.livingStateController,
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
                                  labelText: "Living State",
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
                                getController.selectedOptionIndex.value = 10;
                                getController.animationController.forward();
                              },
                              child: TextField(
                                enabled: false,
                                controller: getController.livingCityController,
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
                                  labelText: "Living City",
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
                            MaterialButton(
                              onPressed: () {
                                getController.submitPersonalPreference();
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
                                      //religion
                                      case 1:
                                        getController.selectedReligion.value =
                                            getController.religion[index];
                                        getController.religionController.text =
                                            getController
                                                .selectedReligion.value;
                                        getController.getCastes();

                                        getController.animationController
                                            .reverse();
                                        break;
                                      //caste
                                      case 2:
                                        getController.selectedCaste.value =
                                            getController.caste[index];
                                        getController.casteController.text =
                                            getController.selectedCaste.value;

                                        getController.animationController
                                            .reverse();
                                        break;
                                      //looking for
                                      case 3:
                                        getController.selectedLookingFor.value =
                                            getController.lookingFor[index];
                                        getController
                                                .lookingForController.text =
                                            getController
                                                .selectedLookingFor.value;

                                        getController.animationController
                                            .reverse();
                                        break;

                                      //education
                                      case 4:
                                        getController.selectedEducation.value =
                                            getController.education[index];
                                        getController.educationController.text =
                                            getController
                                                .selectedEducation.value;

                                        getController.animationController
                                            .reverse();
                                        break;
                                      //Employment Type
                                      case 5:
                                        getController
                                                .selectedEmploymentType.value =
                                            getController.employmentType[index];
                                        getController
                                                .employmentTypeController.text =
                                            getController
                                                .selectedEmploymentType.value;

                                        getController.animationController
                                            .reverse();
                                        break;
                                      //Annual Income
                                      case 6:
                                        getController
                                                .selectedAnnualIncome.value =
                                            getController.annualIncome[index];
                                        getController
                                                .annualIncomeController.text =
                                            getController
                                                .selectedAnnualIncome.value;

                                        getController.animationController
                                            .reverse();
                                        break;

                                      //Manglik
                                      case 7:
                                        getController.selectedManglik.value =
                                            getController.manglik[index];
                                        getController.manglikController.text =
                                            getController.selectedManglik.value;

                                        getController.animationController
                                            .reverse();
                                        break;

                                      //Living Country
                                      case 8:
                                        getController
                                                .selectedLivingCountry.value =
                                            getController.livingCountry[index];
                                        getController
                                                .livingCountryController.text =
                                            getController
                                                .selectedLivingCountry.value;
                                        getController.loadLivingStates();
                                        getController.animationController
                                            .reverse();
                                        break;

                                      //Living State
                                      case 9:
                                        getController
                                                .selectedLivingState.value =
                                            getController.livingState[index];
                                        getController
                                                .livingStateController.text =
                                            getController
                                                .selectedLivingState.value;
                                        getController.loadLivingCities();

                                        getController.animationController
                                            .reverse();
                                        break;

                                      //Living City
                                      case 10:
                                        getController.selectedLivingCity.value =
                                            getController.livingCity[index];
                                        getController
                                                .livingCityController.text =
                                            getController
                                                .selectedLivingCity.value;

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
                body: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }),
      ),
    );
  }
}

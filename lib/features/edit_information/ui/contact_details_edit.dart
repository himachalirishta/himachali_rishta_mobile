import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:sizer/sizer.dart';

import '../../authentication/login/ui/side_option_drawer.dart';
import '../get_controllers/contact_details_edit_get_controller.dart';

class ContactDetailsEdit extends StatelessWidget {
  ContactDetailsEdit({super.key});

  ContactDetailsEditGetController getController =
      Get.put(ContactDetailsEditGetController());

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
                                controller: getController.mobileNoController,
                                obscureText: false,
                                keyboardType: TextInputType.phone,
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
                                  labelText: "Mobile Number",
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
                                controller: getController.altNoController,
                                obscureText: false,
                                keyboardType: TextInputType.phone,
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
                                  labelText: "Alternate Number",
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
                                controller: getController.whatsappNoController,
                                obscureText: false,
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.phone,
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
                                  labelText: "Whatsapp Number",
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
                                    getController.emailAddressController,
                                obscureText: false,
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.emailAddress,
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
                                  labelText: "Email Address",
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
                              //home town
                              TextField(
                                controller: getController.homeTownController,
                                obscureText: false,
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.text,
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
                                  controller: getController.countryController,
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
                                    labelText: "Country",
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
                                  controller: getController.stateController,
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
                                    labelText: "State",
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
                                  getController.selectedOptionIndex.value = 3;
                                  getController.animationController.forward();
                                },
                                child: TextField(
                                  enabled: false,
                                  controller: getController.cityController,
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
                                    labelText: "City",
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
                                  getController.selectedOptionIndex.value = 5;
                                  getController.animationController.forward();
                                },
                                child: TextField(
                                  enabled: false,
                                  controller:
                                      getController.livingStateController,
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
                                  getController.selectedOptionIndex.value = 6;
                                  getController.animationController.forward();
                                },
                                child: TextField(
                                  enabled: false,
                                  controller:
                                      getController.livingCityController,
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
                                height: 16.sp.adjustedSp,
                                width: 16.sp.adjustedSp,
                              ),
                              MaterialButton(
                                onPressed: () {
                                  getController.submitContactDetails();
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
                              SizedBox(
                                height: 16.sp.adjustedSp,
                                width: 16.sp.adjustedSp,
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
                                  child: Obx(() {
                                    return SideOptionDrawer(
                                      options: getController
                                          .selectedOption[getController
                                              .selectedOptionIndex.value]!
                                          .value,
                                      onOptionSelected: (index) {
                                        switch (getController
                                            .selectedOptionIndex.value) {
                                          case 1:
                                            //country
                                            getController
                                                    .selectedCountry.value =
                                                getController.country[index];
                                            getController
                                                    .countryController.text =
                                                getController
                                                    .selectedCountry.value;
                                            getController.selectedCountryModel =
                                                getController
                                                    .allCountries[index];
                                            getController.loadStates();
                                            getController.animationController
                                                .reverse();
                                            break;
                                          case 2:
                                            //state
                                            getController.selectedState.value =
                                                getController.state[index];
                                            getController.stateController.text =
                                                getController
                                                    .selectedState.value;
                                            getController.selectedStateModel =
                                                getController.allStates[index];
                                            getController.loadCities();
                                            getController.animationController
                                                .reverse();
                                            break;
                                          case 3:
                                            //city
                                            getController.selectedCity.value =
                                                getController.city[index];
                                            getController.cityController.text =
                                                getController
                                                    .selectedCity.value;
                                            getController.animationController
                                                .reverse();
                                            break;
                                          case 4:
                                            //living country
                                            getController.selectedLivingCountry
                                                    .value =
                                                getController.country[index];
                                            getController
                                                    .livingCountryController
                                                    .text =
                                                getController
                                                    .selectedLivingCountry
                                                    .value;
                                            getController
                                                    .selectedLivingCountryModel =
                                                getController
                                                    .allLivingCountries[index];
                                            getController.loadLivingStates();
                                            getController.animationController
                                                .reverse();
                                            break;
                                          case 5:
                                            //living state
                                            getController
                                                    .selectedLivingState.value =
                                                getController.state[index];
                                            getController.livingStateController
                                                    .text =
                                                getController
                                                    .selectedLivingState.value;
                                            getController
                                                    .selectedLivingStateModel =
                                                getController
                                                    .allLivingStates[index];
                                            getController.loadLivingCities();
                                            getController.animationController
                                                .reverse();
                                            break;
                                          case 6:
                                            //living city
                                            getController
                                                    .selectedLivingCity.value =
                                                getController.city[index];
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
                                    );
                                  }));
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
              })),
    );
  }
}

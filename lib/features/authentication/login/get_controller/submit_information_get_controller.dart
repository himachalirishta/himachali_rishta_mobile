import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/features/authentication/login/models/caste_model.dart';
import 'package:himachali_rishta/features/authentication/login/models/registration_step_1_request.dart';
import 'package:himachali_rishta/features/authentication/login/models/religion_model.dart';
import 'package:himachali_rishta/features/authentication/login/ui/SubmitInformationPage2.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:http/http.dart' as http;
import 'package:sizer/sizer.dart';

class SubmitInformationGetController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;

  TextEditingController nameController = TextEditingController();
  TextEditingController dayController = TextEditingController();
  TextEditingController monthController = TextEditingController();
  TextEditingController yearController = TextEditingController();
  RxList<String> gender = ['Select Gender', 'Male', 'Female'].obs;
  RxString selectedGender = 'Select Gender'.obs;
  RxList<String> religion =
      ['Select Religion', 'Hindu', 'Muslim', 'Sikh', 'Christian'].obs;
  RxString selectedReligion = 'Select Religion'.obs;
  RxList<String> caste =
      ['Select Caste', 'Brahmin', 'Rajput', 'Jat', 'Kayastha'].obs;
  RxString selectedCaste = 'Select Caste'.obs;
  RxList<String> maritalStatus = [
    'Marital Status',
    'Single',
    'Married',
    'Divorced',
    'Widowed',
    'Separated',
    'Other'
  ].obs;
  RxList<String> noOfChildren = ['No. of Children', '0', '1', '2', 'More'].obs;
  RxString selectedNoOfChildren = 'No. of Children'.obs;
  RxString selectedMaritalStatus = 'Single'.obs;
  RxList<String> postingThisProfileFor =
      ['Posting this profile for', 'Self', 'Son', 'Daughter', 'Friend'].obs;
  RxString selectedPostingThisProfileFor = 'Posting this profile for'.obs;

  RxMap<int, RxList<String>> selectedOption = <int, RxList<String>>{}.obs;
  RxInt selectedOptionIndex = 0.obs;

  List<ReligionModel> allReligions = [];

  @override
  void onInit() {
    getReligions().then((value) {
      getCastes();
    });
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    selectedOption.value = {
      0: <String>[].obs,
      1: gender,
      2: religion,
      3: caste,
      4: maritalStatus,
      5: noOfChildren,
      6: postingThisProfileFor
    };
    super.onInit();
  }

  Future<void> getCastes() async {
    int indexWhere = allReligions.indexWhere((element) =>
        element.name.toLowerCase() == selectedReligion.value.toLowerCase());
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://devmatri.rishtaguru.com/api/cast?id=${allReligions[indexWhere].id}'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      List<CasteModel> castes =
          casteModelFromJson(await response.stream.bytesToString());
      caste.clear();
      caste.value = castes.map((e) => e.name).toList().obs;
      selectedCaste.value = caste.first;
    } else {}
  }

  Future<void> getReligions() async {
    var request = http.Request(
        'GET', Uri.parse('https://devmatri.rishtaguru.com/api/religion'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      List<ReligionModel> religions =
          religionModelFromJson(await response.stream.bytesToString());
      religion.value = religions.map((e) => e.name).toList().obs;
      selectedReligion.value = religion.first;
      allReligions = religions;
    } else {}
  }

  Future<void> submitFirstStepRegistration(String accessToken) async {
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken'
    };

    RegistrationStep1Request registrationStep1Request =
        RegistrationStep1Request(
            brideGroomName: nameController.text.trim(),
            gender: selectedGender.value,
            religion: selectedReligion.value,
            caste: selectedCaste.value,
            maritalStatus: selectedMaritalStatus.value,
            postingThisProfileFor: selectedPostingThisProfileFor.value,
            dateOfBirth: DateTime(
                int.parse(yearController.text.trim()),
                int.parse(monthController.text.trim()),
                int.parse(dayController.text.trim())));
    var request = http.Request('POST',
        Uri.parse('https://devmatri.rishtaguru.com/api/register/step/1'));
    request.body = json.encode(registrationStep1Request.toJson());
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      RegistrationStep1Response registrationStep1Response =
          registrationStep1ResponseFromJson(
              await response.stream.bytesToString());
      Get.to(() => SubmitInformationPage2(accessToken: accessToken));
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  void selectDateOfBirth(BuildContext context) async {
    DateTime now = DateTime.now();
    DateTime firstDate = DateTime(now.year - 100, now.month, now.day);
    DateTime lastDate = DateTime(now.year - 21, now.month, now.day);

    if (selectedGender.value == 'Male') {
      lastDate = DateTime(now.year - 21, now.month, now.day);
    } else if (selectedGender.value == 'Female') {
      lastDate = DateTime(now.year - 18, now.month, now.day);
    }

    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        message: SizedBox(
          height: 30.h.adjustedH,
          child: CupertinoDatePicker(
            initialDateTime: lastDate.subtract(const Duration()),
            minimumDate: firstDate,
            maximumDate: lastDate,
            mode: CupertinoDatePickerMode.date,
            use24hFormat: true,
            dateOrder: DatePickerDateOrder.dmy,
            // This shows day of week alongside day of month
            showDayOfWeek: false,
            // This is called when the user changes the date.
            onDateTimeChanged: (DateTime newDate) {
              dayController.text = newDate.day.toString();
              monthController.text = newDate.month.toString();
              yearController.text = newDate.year.toString();
            },
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'))
        ],
      ),
    );
    /*showDialog(
        context: context,
        builder: (context) {
          return Container(
            color: Colors.white,
            child: CupertinoDatePicker(
              initialDateTime: lastDate.subtract(const Duration()),
              minimumDate: firstDate,
              maximumDate: lastDate,
              mode: CupertinoDatePickerMode.date,
              use24hFormat: true,
              dateOrder: DatePickerDateOrder.dmy,
              // This shows day of week alongside day of month
              showDayOfWeek: false,
              // This is called when the user changes the date.
              onDateTimeChanged: (DateTime newDate) {
                dayController.text = newDate.day.toString();
                monthController.text = newDate.month.toString();
                yearController.text = newDate.year.toString();
              },
            ),
          );
        });*/
  }
}

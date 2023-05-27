import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchPageGetController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;

  RxMap<int, RxList<String>> selectedOption = <int, RxList<String>>{}.obs;
  RxInt selectedOptionIndex = 0.obs;

  RxList<String> religion = [
    'Hindu',
    'Muslim',
    'Sikh',
    'Christian',
    'Jain',
    'Buddhist',
  ].obs;
  RxString selectedReligion = 'Hindu'.obs;

  RxList<String> caste = [
    'Brahmin',
    'Rajput',
    'Thakur',
  ].obs;
  RxString selectedCaste = 'Brahmin'.obs;

  RxList<String> maritalStatus = [
    'Never Married',
    'Divorced',
    'Widowed',
    'Awaiting Divorce',
  ].obs;
  RxString selectedMaritalStatus = 'Never Married'.obs;

  @override
  void onInit() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    selectedOption.value = {
      0: <String>[].obs,
      1: religion,
      2: caste,
      3: maritalStatus,
    };
    super.onInit();
  }
}

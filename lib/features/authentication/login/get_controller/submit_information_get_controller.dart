import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class SubmitInformationGetController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
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

  @override
  void onInit() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
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
}
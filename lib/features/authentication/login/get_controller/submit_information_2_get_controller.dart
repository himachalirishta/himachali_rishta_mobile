import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SubmitInformation2GetController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController heightController = TextEditingController();
  TextEditingController livingCountryController = TextEditingController();
  TextEditingController livingStateController = TextEditingController();
  TextEditingController homeTownCountryController = TextEditingController();
  TextEditingController homeTownStateController = TextEditingController();
  TextEditingController homeTownCityController = TextEditingController();
  TextEditingController birthPlaceController = TextEditingController();
  TextEditingController birthTimeController = TextEditingController();
  late AnimationController animationController;
  RxList<String> occupationType =
      ['Select Occupation Type', 'Private', 'Government', 'Entrepreneur'].obs;
  RxString selectedOccupationType = 'Select Occupation Type'.obs;

  RxList<String> education = [
    'Select Education',
    '10',
    '12',
    'Graduate',
    'Post Graduate',
    'Ph.D.'
  ].obs;
  RxString selectedEducation = 'Select Education'.obs;

  RxMap<int, RxList<String>> selectedOption = <int, RxList<String>>{}.obs;
  RxInt selectedOptionIndex = 0.obs;

  @override
  void onInit() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    selectedOption.value = {
      0: <String>[].obs,
      1: occupationType,
      2: education,
    };
    super.onInit();
  }
}

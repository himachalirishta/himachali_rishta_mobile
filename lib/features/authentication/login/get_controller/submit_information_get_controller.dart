import 'package:get/get.dart';

class SubmitInformationGetController extends GetxController {
  List<String> maritalStatus = [
    'Single',
    'Married',
    'Divorced',
    'Widowed',
    'Separated',
    'Other'
  ];
  RxString selectedMaritalStatus = 'Single'.obs;
}

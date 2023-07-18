import 'package:get/get.dart';

class DeleteProfileGetController extends GetxController{
  RxList<String> reasonForLeaving = ['Reason for leaving', 'Found Match', 'Not getting match', 'Other'].obs;
  RxString selectedReasonForLeaving = 'Reason for leaving'.obs;
}
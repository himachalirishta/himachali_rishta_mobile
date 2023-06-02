import 'package:get/get.dart';
import 'package:himachali_rishta/features/authentication/login/get_controller/login_page_get_controller.dart';
import 'package:himachali_rishta/features/authentication/login/models/login_response.dart';
import 'package:himachali_rishta/features/dashboard/models/latest_profile_model.dart';
import 'package:http/http.dart' as http;

class AllTabGetController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  Future<LatestProfileModel> getLatestProfiles() async {
    LoginPageGetController loginPageGetController = Get.find();
    LoginResponse loginResponse = await loginPageGetController.initLoginApi();
    var headers = {'Authorization': 'Bearer ${loginResponse.accessToken}'};
    var request = http.Request(
        'GET', Uri.parse('https://devmatri.rishtaguru.com/api/latest-profile'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    print("Request sent");
    if (response.statusCode == 200) {
      print("Response received");
      LatestProfileModel latestProfileModel =
          latestProfileModelFromJson(await response.stream.bytesToString());
      return latestProfileModel;
    } else {
      print(response.reasonPhrase);
      throw response.reasonPhrase.toString();
    }
  }
}

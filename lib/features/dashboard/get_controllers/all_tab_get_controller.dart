import 'package:get/get.dart';
import 'package:himachali_rishta/features/dashboard/models/latest_profile_model.dart';
import 'package:http/http.dart' as http;

class AllTabGetController extends GetxController {
  final String accessToken;
  Rx<LatestProfileModel> latestProfileModel = LatestProfileModel.empty().obs;

  AllTabGetController(this.accessToken);

  Future<LatestProfileModel> getLatestProfiles(String accessToken) async {
    var headers = {
      'Authorization': 'Bearer $accessToken',
    };
    var request = http.Request(
        'GET', Uri.parse('https://devmatri.rishtaguru.com/api/latest-profile'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print("Response Code 200");
      latestProfileModel.value =
          latestProfileModelFromJson(await response.stream.bytesToString());

      print("Latest Profiles number");
      print(latestProfileModel.value.data.length);
      return latestProfileModel.value;
    } else {
      throw response.reasonPhrase.toString();
    }
  }

  @override
  void onInit() {
    getLatestProfiles(accessToken);
    super.onInit();
  }
}

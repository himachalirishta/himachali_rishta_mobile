import 'package:get/get.dart';
import 'package:himachali_rishta/features/dashboard/models/latest_profile_model.dart';
import 'package:http/http.dart' as http;

class AllTabGetController extends GetxController {

  Future<LatestProfileModel> getLatestProfiles(String accessToken) async {
    var headers = {'Authorization': 'Bearer $accessToken'};
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

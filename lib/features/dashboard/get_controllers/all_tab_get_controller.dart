import 'package:get/get.dart';
import 'package:himachali_rishta/features/dashboard/models/latest_profile_model.dart';
import 'package:http/http.dart' as http;

class AllTabGetController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  Future<LatestProfileModel> getLatestProfiles() async {
    var headers = {
      'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2Rldm1hdHJpLnJpc2h0YWd1cnUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNjg1NTE3NTQ5LCJleHAiOjE2ODU1MjExNDksIm5iZiI6MTY4NTUxNzU0OSwianRpIjoiQXlYME1lWUxjUUJ1ZTNCUSIsInN1YiI6IjExMTMxOSIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.gjCPgCUN_js81VT8Kq-IPDJ8GqLsG9ZHlSoN3JcPAlc'
    };
    var request = http.Request('GET', Uri.parse('https://devmatri.rishtaguru.com/api/latest-profile'));

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

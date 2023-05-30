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
      'Authorization':
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2Rldm1hdHJpLnJpc2h0YWd1cnUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNjg1NDQ4OTI1LCJleHAiOjE2ODU0NTI1MjUsIm5iZiI6MTY4NTQ0ODkyNSwianRpIjoicDNod0xLbUFpSEhMSlVWVCIsInN1YiI6IjExMTMxOSIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.xIC5Kb4uqrFg2d-liyED_Jvl0sBjBRunLbo-T2I0-MU'
    };
    var request = http.Request(
        'GET', Uri.parse('https://devmatri.rishtaguru.com/api/latest-profile'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      LatestProfileModel latestProfileModel =
          latestProfileModelFromJson(await response.stream.bytesToString());
      return latestProfileModel;
    } else {
      throw response.reasonPhrase.toString();
    }
  }
}

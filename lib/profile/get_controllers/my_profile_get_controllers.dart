import 'dart:convert';

import 'package:get/get.dart';
import 'package:himachali_rishta/core/app_constants.dart';
import 'package:himachali_rishta/features/authentication/login/models/login_request.dart';
import 'package:himachali_rishta/features/authentication/login/models/login_response.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../models/my_profile_details_model.dart';

class MyProfileGetController extends GetxController {
  Rx<MyProfileDetailsModel> myProfileDetailsModel =
      MyProfileDetailsModel.empty().obs;

  Future<MyProfileDetailsModel> getProfileDetails() async {
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST', Uri.parse('https://devmatri.rishtaguru.com/api/auth/login'));

    var prefs = await SharedPreferences.getInstance();
    LoginResponse response = LoginResponse.fromJson(
        jsonDecode(prefs.getString(AppConstants.loginResponse)!));
    LoginRequest loginRequest = LoginRequest(
        phone: response.userdata!.countryCode! + response.userdata!.phone!);
    request.body = json.encode(loginRequest.toJson());
    request.headers.addAll(headers);

    http.StreamedResponse responseFromLogin = await request.send();

    if (responseFromLogin.statusCode == 200) {
      LoginResponse loginResponse = LoginResponse.fromJson(
          json.decode(await responseFromLogin.stream.bytesToString()));

      var headers = {
        'Authorization': 'Bearer ${loginResponse.accessToken}',
        'Cookie':
            'XSRF-TOKEN=eyJpdiI6ImJBTGlEa1I4TlRxdE5ZZ2xRMVYrSmc9PSIsInZhbHVlIjoiakdpcW5TNTRDMTlEcDVwTDdveW5BUkhPSVdlTitPTjB5ejNEajBTNkVmLzBiT25DZVNudS93VFc1dWRGaFNSTXIzaTRPb1ZqWXNBbHNtcVFKb2hMT1JFV216MGJoVlFsOVdwUnhlM0oyVHhLWitXa0N0TDJ5eDZLN1B0bUo1S0kiLCJtYWMiOiJjNWE4MWNlZDJjM2UyYmM0NWFlZWQyNzllOTM4NmU2MWM3ZGEwNTIzYTZjOWM0ODI4ZmEyNjdmZDBjOTc1MTI4IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6ImU2VXcyZ0MrNGtmYUcwelg3dDQvZ0E9PSIsInZhbHVlIjoiT2JqeDNRK2RHVTlEY2tQK0FPSk1zSTJ0OFFTbDl6eXJVb3lJY3pmcjFQR1M0ejRHb0thcHpWQWY3Um1pa3Ywekh4aWZobGhVOHhUeXcwRFlaWmJEUDF3c0E4QysxOGtGMXBqcXFHcEJDUHpqMURHNW5USFBFU1hKUU1leFNqU3EiLCJtYWMiOiJjOTIzMTFkYTRmZWM3ZWFhNjZmMTJhZGYwYzZkOWYwMWQ4MzVlOWE5MDAwNWNhY2IyNDZhZjM0YWI1MDVhNDU0IiwidGFnIjoiIn0%3D'
      };
      var request = http.Request('GET',
          Uri.parse('https://devmatri.rishtaguru.com/api/view/all-profile'));

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        print(await response.stream.bytesToString());
        MyProfileDetailsModel myProfileDetailsModel =
            MyProfileDetailsModel.fromJson(
                json.decode(await response.stream.bytesToString()));

        return myProfileDetailsModel;
      } else {
        throw Exception(response.reasonPhrase);
      }
    } else {
      throw Exception(responseFromLogin.reasonPhrase);
    }
  }
}

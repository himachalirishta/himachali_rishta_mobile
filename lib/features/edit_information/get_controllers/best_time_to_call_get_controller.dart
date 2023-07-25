import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/app_constants.dart';
import '../../authentication/login/models/login_request.dart';
import '../../authentication/login/models/login_response.dart';
import '../models/best_time_to_call_request.dart';

class BestTimeToCallGetController extends GetxController {
  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();

  Future<void> submitBestTimeToCall() async {
    var prefs = await SharedPreferences.getInstance();
    LoginResponse response = LoginResponse.fromJson(
        jsonDecode(prefs.getString(AppConstants.loginResponse)!));
    LoginRequest loginRequest = LoginRequest(
        phone: response.userdata!.countryCode! + response.userdata!.phone!);
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST', Uri.parse('${AppConstants.baseUrl}auth/login'));
    request.body = json.encode(loginRequest.toJson());
    request.headers.addAll(headers);

    http.StreamedResponse responseForLogin = await request.send();

    if (responseForLogin.statusCode == 200) {
      LoginResponse loginResponse = LoginResponse.fromJson(
          json.decode(await responseForLogin.stream.bytesToString()));

      var headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${loginResponse.accessToken}'
      };
      var request = http.Request(
          'POST',
          Uri.parse(
              '${AppConstants.baseUrl}edit/suitable-time-to-call'));

      BestTimeToCallRequest assetsAndPropertiesRequest = BestTimeToCallRequest(
          callTimeFrom: fromController.text, callTimeTo: toController.text);

      request.body = json.encode(assetsAndPropertiesRequest.toJson());
      request.headers.addAll(headers);

      http.StreamedResponse responseForEducationOccupation =
          await request.send();

      if (responseForEducationOccupation.statusCode == 200) {
        BestTimeToCallResponse assetsAndPropertiesResponse =
            BestTimeToCallResponse.fromJson(json.decode(
                await responseForEducationOccupation.stream.bytesToString()));
        Get.back();
        Get.snackbar('Message', assetsAndPropertiesResponse.message,
            backgroundColor: Colors.green, colorText: Colors.white);
      } else {
        throw Exception(responseForEducationOccupation.reasonPhrase);
      }
    } else {
      throw Exception(responseForLogin.reasonPhrase);
    }
  }
}

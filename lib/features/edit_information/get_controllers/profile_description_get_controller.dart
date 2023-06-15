import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../authentication/login/models/login_request.dart';
import '../../authentication/login/models/login_response.dart';
import '../models/profile_description_request.dart';

class ProfileDescriptionGetController extends GetxController {
  TextEditingController descriptionController = TextEditingController();

  Future<void> submitDescription() async {
    LoginRequest loginRequest =
        LoginRequest(phone: FirebaseAuth.instance.currentUser!.phoneNumber!);
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST', Uri.parse('https://devmatri.rishtaguru.com/api/auth/login'));
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
              'https://devmatri.rishtaguru.com/api/edit/profile-description'));

      ProfileDescriptionRequest profileDescriptionRequest =
          ProfileDescriptionRequest(
        profileDescription: descriptionController.text,
      );

      request.body = json.encode(profileDescriptionRequest.toJson());
      request.headers.addAll(headers);

      http.StreamedResponse responseForEducationOccupation =
          await request.send();

      if (responseForEducationOccupation.statusCode == 200) {
        ProfileDescriptionResponse profileDescriptionResponse =
            ProfileDescriptionResponse.fromJson(json.decode(
                await responseForEducationOccupation.stream.bytesToString()));
        Get.back();
        Get.snackbar('Message', profileDescriptionResponse.message,
            backgroundColor: Colors.green, colorText: Colors.white);
      } else {
        throw Exception(responseForEducationOccupation.reasonPhrase);
      }
    } else {
      throw Exception(responseForLogin.reasonPhrase);
    }
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/core/app_constants.dart';
import 'package:himachali_rishta/features/edit_information/models/assets_and_properties_request.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../authentication/login/models/login_request.dart';
import '../../authentication/login/models/login_response.dart';

class AssetsAndPropertiesGetController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController ownHouseController = TextEditingController();
  TextEditingController ownCarController = TextEditingController();
  TextEditingController ownLandAgricultureController = TextEditingController();
  TextEditingController ownCommercialLandController = TextEditingController();
  TextEditingController ownAnyBusinessController = TextEditingController();

  RxList<String> ownHouse = <String>[
    'Yes',
    'No',
  ].obs;
  RxString selectedOwnHouse = 'Yes'.obs;

  RxList<String> ownCar = <String>[
    'Yes',
    'No',
  ].obs;
  RxString selectedOwnCar = 'Yes'.obs;

  RxList<String> ownLandAgriculture = <String>[
    'Yes',
    'No',
  ].obs;
  RxString selectedOwnLandAgriculture = 'Yes'.obs;

  RxList<String> ownCommercialLand = <String>[
    'Yes',
    'No',
  ].obs;
  RxString selectedOwnCommercialLand = 'Yes'.obs;

  RxList<String> ownAnyBusiness = <String>[
    'Yes',
    'No',
  ].obs;
  RxString selectedOwnAnyBusiness = 'Yes'.obs;

  RxMap<int, RxList<String>> selectedOption = <int, RxList<String>>{}.obs;
  RxInt selectedOptionIndex = 0.obs;

  late AnimationController animationController;

  @override
  void onInit() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    selectedOption.value = {
      0: <String>[].obs,
      1: ownHouse,
      2: ownCar,
      3: ownLandAgriculture,
      4: ownCommercialLand,
      5: ownAnyBusiness,
    };
    super.onInit();
  }

  Future<void> submitAssetsAndProperties() async {
    SharedPreferences.getInstance().then((prefs) async {
      LoginResponse loginResponse = LoginResponse.fromJson(
          json.decode(prefs.getString(AppConstants.loginResponse)!));
      LoginRequest loginRequest = LoginRequest(
          phone: loginResponse.userdata!.countryCode! +
              loginResponse.userdata!.phone!);
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
                '${AppConstants.baseUrl}edit/assets-properties'));

        AssetsAndPropertiesRequest assetsAndPropertiesRequest =
            AssetsAndPropertiesRequest(
          ownHouse: ownHouseController.text,
          ownCar: ownCarController.text,
          ownLandAgri: ownLandAgricultureController.text,
          ownCommericialLand: ownCommercialLandController.text,
          ownAnyBusiness: ownAnyBusinessController.text,
        );

        request.body = json.encode(assetsAndPropertiesRequest.toJson());
        request.headers.addAll(headers);

        http.StreamedResponse responseForEducationOccupation =
            await request.send();

        if (responseForEducationOccupation.statusCode == 200) {
          AssetsAndPropertiesResponse assetsAndPropertiesResponse =
              AssetsAndPropertiesResponse.fromJson(json.decode(
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
    });
  }
}

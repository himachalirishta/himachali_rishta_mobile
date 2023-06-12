import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/features/authentication/login/models/login_request.dart';
import 'package:himachali_rishta/features/authentication/login/models/login_response.dart';
import 'package:himachali_rishta/features/edit_information/models/physical_attributes_and_eating_habits_request.dart';
import 'package:http/http.dart' as http;

class PhysicalAttributesAndEatingHabitsGetController extends GetxController
    with GetSingleTickerProviderStateMixin {
  //ft, inches, weight, blood group, complexion, body type, diet, special case, disability
  TextEditingController ftController = TextEditingController();
  TextEditingController inchesController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController bloodGroupController = TextEditingController();
  TextEditingController complexionController = TextEditingController();
  TextEditingController bodyTypeController = TextEditingController();
  TextEditingController dietController = TextEditingController();
  TextEditingController specialCaseController = TextEditingController();
  TextEditingController disabilityController = TextEditingController();

  RxList<String> bloodGroup = <String>[
    'A+',
    'A-',
    'B+',
    'B-',
    'AB+',
    'AB-',
    'O+',
    'O-',
  ].obs;
  RxString selectedBloodGroup = 'A+'.obs;

  RxList<String> complexion = <String>[
    'Very Fair',
    'Fair',
    'Wheatish',
    'Wheatish Brown',
    'Dark',
  ].obs;
  RxString selectedComplexion = 'Very Fair'.obs;

  RxList<String> bodyType = <String>[
    'Slim',
    'Average',
    'Athletic',
    'Heavy',
  ].obs;
  RxString selectedBodyType = 'Slim'.obs;

  RxList<String> diet = <String>[
    'Veg',
    'Non-Veg',
    'Eggetarian',
    'Jain',
    'Vegan',
  ].obs;

  RxString selectedDiet = 'Veg'.obs;

  RxList<String> specialCase = <String>[
    'None',
    'Physically Challenged',
    'Physically Challenged from birth',
    'Mentally Challenged',
    'Mentally Challenged from birth',
    'Physically Challenged due to accident',
    'Mentally Challenged due to accident',
    'Physically Challenged - Hearing Impaired',
    'Physically Challenged - Visually Impaired',
    'Physically Challenged - Speech Impaired',
    'Physically Challenged - Others',
    'Don\'t want to specify',
  ].obs;

  RxString selectedSpecialCase = 'None'.obs;

  RxList<String> disability = <String>[
    'None',
    'Physically Handicapped from birth',
    'Physically Handicapped due to accident',
    'Mentally Challenged from birth',
    'Mentally Challenged due to accident',
    'Hearing Impaired',
    'Visually Impaired',
    'Speech Impaired',
    'Others',
    'Don\'t want to specify',
  ].obs;

  RxString selectedDisability = 'None'.obs;

  late AnimationController animationController;
  RxMap<int, RxList<String>> selectedOption = <int, RxList<String>>{}.obs;
  RxInt selectedOptionIndex = 0.obs;

  @override
  void onInit() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    selectedOption.value = {
      0: <String>[].obs,
      1: bloodGroup,
      2: complexion,
      3: bodyType,
      4: diet,
      5: specialCase,
      6: disability,
    };
    super.onInit();
  }

  Future<void> submitPhysicalAttributesAndEatingHabits() async {
    var headers = {
      'Content-Type': 'application/json',
      'Cookie':
          'XSRF-TOKEN=eyJpdiI6IjhZYUl6QncwNk5ZRGIydFZOd0ZiZHc9PSIsInZhbHVlIjoiQ1lWWnRpYkVxb1YxOHExNk5JdHdod1F2Sy9kOUJYQ0E3aStZMUp3QjRPeHE2N1BQM1c2TlZDNDA3Ty9maTMvakZvT1pUZWZUQk8xdEp2VkV6VkZPNWI0Slh4cFhkOUlGN2R4Mll2YkpZL2l1RkZJYVVHN2cva29kWUgzajArVTYiLCJtYWMiOiIwMmYxM2U3OWE4OWNjODkwOWNkNWMxY2ZmMDkwMjUxZGMwZWE2M2Y1YWZiNTI3YTRlMjMwYWU2ODUxMDgxZWE3IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6ImpMYVJ5UzYyRmxMR0xlNFdhZ0szUFE9PSIsInZhbHVlIjoiOHBRMGwwN0xKcHdLSm1OblBtSTZyNmF2QkcxZkV0ei9jckhJd3dabGllZkZsQTgvWnBPVS9pVXdreVpyNkxaMGM0UDB4SWJVcmE1TUVKU3RCR3lCS0hIS3d0SmM5MlVkTlN3TEpVdE96T2tLU3FqUkxjY2d4eThwYmtBSlRYbU0iLCJtYWMiOiJkYjFhYjhlYTlhMTg1YjQ5MDBkMjI5ZTMwNmQzMWQyZDFlOWJhN2E0NzY2MjBiNTNiNTI5NjIwNzA0YjcxMGQzIiwidGFnIjoiIn0%3D'
    };

    LoginRequest loginRequest =
        LoginRequest(phone: FirebaseAuth.instance.currentUser!.phoneNumber!);
    var request = http.Request(
        'POST', Uri.parse('https://devmatri.rishtaguru.com/api/auth/login'));
    request.body = json.encode(loginRequest.toJson());
    request.headers.addAll(headers);

    http.StreamedResponse responseFromLogin = await request.send();

    if (responseFromLogin.statusCode == 200) {
      LoginResponse loginResponse =
          loginResponseFromJson(await responseFromLogin.stream.bytesToString());
      String accessToken = loginResponse.accessToken;
      var headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
        'Cookie':
            'XSRF-TOKEN=eyJpdiI6IjhZYUl6QncwNk5ZRGIydFZOd0ZiZHc9PSIsInZhbHVlIjoiQ1lWWnRpYkVxb1YxOHExNk5JdHdod1F2Sy9kOUJYQ0E3aStZMUp3QjRPeHE2N1BQM1c2TlZDNDA3Ty9maTMvakZvT1pUZWZUQk8xdEp2VkV6VkZPNWI0Slh4cFhkOUlGN2R4Mll2YkpZL2l1RkZJYVVHN2cva29kWUgzajArVTYiLCJtYWMiOiIwMmYxM2U3OWE4OWNjODkwOWNkNWMxY2ZmMDkwMjUxZGMwZWE2M2Y1YWZiNTI3YTRlMjMwYWU2ODUxMDgxZWE3IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6ImpMYVJ5UzYyRmxMR0xlNFdhZ0szUFE9PSIsInZhbHVlIjoiOHBRMGwwN0xKcHdLSm1OblBtSTZyNmF2QkcxZkV0ei9jckhJd3dabGllZkZsQTgvWnBPVS9pVXdreVpyNkxaMGM0UDB4SWJVcmE1TUVKU3RCR3lCS0hIS3d0SmM5MlVkTlN3TEpVdE96T2tLU3FqUkxjY2d4eThwYmtBSlRYbU0iLCJtYWMiOiJkYjFhYjhlYTlhMTg1YjQ5MDBkMjI5ZTMwNmQzMWQyZDFlOWJhN2E0NzY2MjBiNTNiNTI5NjIwNzA0YjcxMGQzIiwidGFnIjoiIn0%3D'
      };
      var request = http.Request(
          'POST',
          Uri.parse(
              'https://devmatri.rishtaguru.com/api/edit/physical-attributes'));
      PhysicalAttributesAndEatingHabitsRequest
          physicalAttributesAndEatingHabitsRequest =
          PhysicalAttributesAndEatingHabitsRequest(
              height: "${ftController.text}ft ${inchesController.text}inch",
              weight: weightController.text,
              bloodGroup: bloodGroupController.text,
              complexion: complexionController.text,
              bodyType: bodyTypeController.text,
              diet: dietController.text,
              specialCase: specialCaseController.text,
              disablity: disabilityController.text);
      request.body =
          json.encode(physicalAttributesAndEatingHabitsRequest.toJson());
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        PhysicalAttributesAndEatingHabitsResponse
            physicalAttributesAndEatingHabitsResponse =
            physicalAttributesAndEatingHabitsResponseFromJson(
                await response.stream.bytesToString());
        if (physicalAttributesAndEatingHabitsResponse.message
            .toLowerCase()
            .contains("upload")) {
          Get.back();
          Get.snackbar('Success',
              'Physical Attributes and Eating Habits Updated Successfully');
        }
      } else {
        throw Exception(response.reasonPhrase);
      }
    } else {
      throw Exception(responseFromLogin.reasonPhrase);
    }
  }
}

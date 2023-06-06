// To parse this JSON data, do
//
//     final registrationStep2Request = registrationStep2RequestFromJson(jsonString);

import 'dart:convert';

RegistrationStep2Request registrationStep2RequestFromJson(String str) => RegistrationStep2Request.fromJson(json.decode(str));

String registrationStep2RequestToJson(RegistrationStep2Request data) => json.encode(data.toJson());

class RegistrationStep2Request {
  final String height;
  final String occupationType;
  final String education;
  final String livingCountry;
  final String livingState;
  final String livingCity;
  final String homeTown;
  final String birthPlace;
  final String birthTime;

  RegistrationStep2Request({
    required this.height,
    required this.occupationType,
    required this.education,
    required this.livingCountry,
    required this.livingState,
    required this.livingCity,
    required this.homeTown,
    required this.birthPlace,
    required this.birthTime,
  });

  RegistrationStep2Request copyWith({
    String? height,
    String? occupationType,
    String? education,
    String? livingCountry,
    String? livingState,
    String? livingCity,
    String? homeTown,
    String? birthPlace,
    String? birthTime,
  }) =>
      RegistrationStep2Request(
        height: height ?? this.height,
        occupationType: occupationType ?? this.occupationType,
        education: education ?? this.education,
        livingCountry: livingCountry ?? this.livingCountry,
        livingState: livingState ?? this.livingState,
        livingCity: livingCity ?? this.livingCity,
        homeTown: homeTown ?? this.homeTown,
        birthPlace: birthPlace ?? this.birthPlace,
        birthTime: birthTime ?? this.birthTime,
      );

  factory RegistrationStep2Request.fromJson(Map<String, dynamic> json) => RegistrationStep2Request(
    height: json["height"],
    occupationType: json["occupation_type"],
    education: json["education"],
    livingCountry: json["living_country"],
    livingState: json["living_state"],
    livingCity: json["living_city"],
    homeTown: json["home_town"],
    birthPlace: json["birth_place"],
    birthTime: json["birth_time"],
  );

  Map<String, dynamic> toJson() => {
    "height": height,
    "occupation_type": occupationType,
    "education": education,
    "living_country": livingCountry,
    "living_state": livingState,
    "living_city": livingCity,
    "home_town": homeTown,
    "birth_place": birthPlace,
    "birth_time": birthTime,
  };
}


// To parse this JSON data, do
//
//     final registrationStep2Response = registrationStep2ResponseFromJson(jsonString);



RegistrationStep2Response registrationStep2ResponseFromJson(String str) => RegistrationStep2Response.fromJson(json.decode(str));

String registrationStep2ResponseToJson(RegistrationStep2Response data) => json.encode(data.toJson());

class RegistrationStep2Response {
  final String message;

  RegistrationStep2Response({
    required this.message,
  });

  RegistrationStep2Response copyWith({
    String? message,
  }) =>
      RegistrationStep2Response(
        message: message ?? this.message,
      );

  factory RegistrationStep2Response.fromJson(Map<String, dynamic> json) => RegistrationStep2Response(
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
  };
}

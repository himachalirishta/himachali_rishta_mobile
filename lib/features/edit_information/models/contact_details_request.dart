// To parse this JSON data, do
//
//     final contactDetailsRequest = contactDetailsRequestFromJson(jsonString);

import 'dart:convert';

ContactDetailsRequest contactDetailsRequestFromJson(String str) =>
    ContactDetailsRequest.fromJson(json.decode(str));

String contactDetailsRequestToJson(ContactDetailsRequest data) =>
    json.encode(data.toJson());

class ContactDetailsRequest {
  String mobileNo;
  String altNo;
  String whatsappNo;
  String emailAddress;
  String hometown;
  String country;
  String state;
  String city;
  String livingCountry;
  String livingState;
  String livingCity;

  ContactDetailsRequest({
    required this.mobileNo,
    required this.altNo,
    required this.whatsappNo,
    required this.emailAddress,
    required this.hometown,
    required this.country,
    required this.state,
    required this.city,
    required this.livingCountry,
    required this.livingState,
    required this.livingCity,
  });

  ContactDetailsRequest copyWith({
    String? mobileNo,
    String? altNo,
    String? whatsappNo,
    String? emailAddress,
    String? hometown,
    String? country,
    String? state,
    String? city,
    String? livingCountry,
    String? livingState,
    String? livingCity,
  }) =>
      ContactDetailsRequest(
        mobileNo: mobileNo ?? this.mobileNo,
        altNo: altNo ?? this.altNo,
        whatsappNo: whatsappNo ?? this.whatsappNo,
        emailAddress: emailAddress ?? this.emailAddress,
        hometown: hometown ?? this.hometown,
        country: country ?? this.country,
        state: state ?? this.state,
        city: city ?? this.city,
        livingCountry: livingCountry ?? this.livingCountry,
        livingState: livingState ?? this.livingState,
        livingCity: livingCity ?? this.livingCity,
      );

  factory ContactDetailsRequest.fromJson(Map<String, dynamic> json) =>
      ContactDetailsRequest(
        mobileNo: json["mobile_no"],
        altNo: json["alt_no"],
        whatsappNo: json["whatsapp_no"],
        emailAddress: json["email_address"],
        hometown: json["hometown"],
        country: json["country"],
        state: json["state"],
        city: json["city"],
        livingCountry: json["living_country"],
        livingState: json["living_state"],
        livingCity: json["living_city"],
      );

  Map<String, dynamic> toJson() => {
        "mobile_no": mobileNo,
        "alt_no": altNo,
        "whatsapp_no": whatsappNo,
        "email_address": emailAddress,
        "hometown": hometown,
        "country": country,
        "state": state,
        "city": city,
        "living_country": livingCountry,
        "living_state": livingState,
        "living_city": livingCity,
      };
}
// To parse this JSON data, do
//
//     final contactDetailsResponse = contactDetailsResponseFromJson(jsonString);

ContactDetailsResponse contactDetailsResponseFromJson(String str) =>
    ContactDetailsResponse.fromJson(json.decode(str));

String contactDetailsResponseToJson(ContactDetailsResponse data) =>
    json.encode(data.toJson());

class ContactDetailsResponse {
  String message;

  ContactDetailsResponse({
    required this.message,
  });

  ContactDetailsResponse copyWith({
    String? message,
  }) =>
      ContactDetailsResponse(
        message: message ?? this.message,
      );

  factory ContactDetailsResponse.fromJson(Map<String, dynamic> json) =>
      ContactDetailsResponse(
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
      };
}

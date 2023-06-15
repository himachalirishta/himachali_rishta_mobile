// To parse this JSON data, do
//
//     final horoscopeSocialRequest = horoscopeSocialRequestFromJson(jsonString);

import 'dart:convert';

HoroscopeSocialRequest horoscopeSocialRequestFromJson(String str) =>
    HoroscopeSocialRequest.fromJson(json.decode(str));

String horoscopeSocialRequestToJson(HoroscopeSocialRequest data) =>
    json.encode(data.toJson());

class HoroscopeSocialRequest {
  String manglik;
  String birthPlace;
  String birthTime;
  String patSubcast;
  String maternalSubcast;
  String gotra;
  String rashi;
  String motherTongue;

  HoroscopeSocialRequest({
    required this.manglik,
    required this.birthPlace,
    required this.birthTime,
    required this.patSubcast,
    required this.maternalSubcast,
    required this.gotra,
    required this.rashi,
    required this.motherTongue,
  });

  HoroscopeSocialRequest copyWith({
    String? manglik,
    String? birthPlace,
    String? birthTime,
    String? patSubcast,
    String? maternalSubcast,
    String? gotra,
    String? rashi,
    String? motherTongue,
  }) =>
      HoroscopeSocialRequest(
        manglik: manglik ?? this.manglik,
        birthPlace: birthPlace ?? this.birthPlace,
        birthTime: birthTime ?? this.birthTime,
        patSubcast: patSubcast ?? this.patSubcast,
        maternalSubcast: maternalSubcast ?? this.maternalSubcast,
        gotra: gotra ?? this.gotra,
        rashi: rashi ?? this.rashi,
        motherTongue: motherTongue ?? this.motherTongue,
      );

  factory HoroscopeSocialRequest.fromJson(Map<String, dynamic> json) =>
      HoroscopeSocialRequest(
        manglik: json["manglik"],
        birthPlace: json["birth_place"],
        birthTime: json["birth_time"],
        patSubcast: json["pat_subcast"],
        maternalSubcast: json["maternal_subcast"],
        gotra: json["gotra"],
        rashi: json["rashi"],
        motherTongue: json["mother_tongue"],
      );

  Map<String, dynamic> toJson() => {
        "manglik": manglik,
        "birth_place": birthPlace,
        "birth_time": birthTime,
        "pat_subcast": patSubcast,
        "maternal_subcast": maternalSubcast,
        "gotra": gotra,
        "rashi": rashi,
        "mother_tongue": motherTongue,
      };
}
// To parse this JSON data, do
//
//     final horoscopeSocialResponse = horoscopeSocialResponseFromJson(jsonString);

HoroscopeSocialResponse horoscopeSocialResponseFromJson(String str) =>
    HoroscopeSocialResponse.fromJson(json.decode(str));

String horoscopeSocialResponseToJson(HoroscopeSocialResponse data) =>
    json.encode(data.toJson());

class HoroscopeSocialResponse {
  String message;

  HoroscopeSocialResponse({
    required this.message,
  });

  HoroscopeSocialResponse copyWith({
    String? message,
  }) =>
      HoroscopeSocialResponse(
        message: message ?? this.message,
      );

  factory HoroscopeSocialResponse.fromJson(Map<String, dynamic> json) =>
      HoroscopeSocialResponse(
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
      };
}

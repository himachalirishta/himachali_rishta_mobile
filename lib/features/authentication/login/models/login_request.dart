// To parse this JSON data, do
//
//     final loginRequest = loginRequestFromJson(jsonString);

import 'dart:convert';

LoginRequest loginRequestFromJson(String str) => LoginRequest.fromJson(json.decode(str));

String loginRequestToJson(LoginRequest data) => json.encode(data.toJson());

class LoginRequest {
  final String phone;

  LoginRequest({
    required this.phone,
  });

  LoginRequest copyWith({
    String? phone,
  }) =>
      LoginRequest(
        phone: phone ?? this.phone,
      );

  factory LoginRequest.fromJson(Map<String, dynamic> json) => LoginRequest(
    phone: json["phone"],
  );

  Map<String, dynamic> toJson() => {
    "phone": phone,
  };
}

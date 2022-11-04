// To parse this JSON data, do
//
//     final generateTokenResponseModel = generateTokenResponseModelFromJson(jsonString);

import 'dart:convert';

String generateTokenResponseModelToJson(GenerateTokenResponseModel data) =>
    json.encode(data.toJson());

class GenerateTokenResponseModel {
  GenerateTokenResponseModel({
    required this.mensaje,
    required this.accessToken,
    required this.expirationTime,
    required this.date,
  });

  final String mensaje;
  final String accessToken;
  final int expirationTime;
  final int date;

  factory GenerateTokenResponseModel.fromJson(Map<String, dynamic> json) =>
      GenerateTokenResponseModel(
        mensaje: json['mensaje'],
        accessToken: json['accessToken'],
        expirationTime: json['expirationTime'],
        date: json['date'],
      );

  Map<String, dynamic> toJson() => {
        'mensaje': mensaje,
        'accessToken': accessToken,
        'expirationTime': expirationTime,
        'date': date,
      };
}

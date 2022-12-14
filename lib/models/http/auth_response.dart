import 'package:admin_dashboard/models/http/usuario.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'dart:convert';

class AuthResponse {
  AuthResponse({
     required this.usuario,
     required this.token,
  });

  Usuario usuario;
  String token;

  factory AuthResponse.fromJson(String str) => AuthResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AuthResponse.fromMap(Map<String, dynamic> json) => AuthResponse(
    usuario: Usuario.fromMap(json["usuario"]),
    token: json["token"],
  );

  Map<String, dynamic> toMap() => {
    "usuario": usuario.toMap(),
    "token": token,
  };
}




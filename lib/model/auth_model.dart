// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:bloc_lecner_clean_service/model/data_model.dart';

class AuthModel extends DataModel {
  String password;
  String username;
  AuthModel({
    required this.password,
    required this.username,
  });

  AuthModel copyWith({
    String? password,
    String? username,
  }) {
    return AuthModel(
      password: password ?? this.password,
      username: username ?? this.username,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory AuthModel.fromMap(Map<String, dynamic> map) {
    return AuthModel(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthModel.fromJson(String source) =>
      AuthModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'AuthModel(password: $password, username: $username)';

  @override
  bool operator ==(covariant AuthModel other) {
    if (identical(this, other)) return true;

    return other.password == password && other.username == username;
  }

  @override
  int get hashCode => password.hashCode ^ username.hashCode;
}

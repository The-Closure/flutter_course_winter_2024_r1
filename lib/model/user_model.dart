// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:bloc_lecner_clean_service/model/data_model.dart';

class UserDateModel extends DataModel{
  int id;
  String email;
  String firstName;
  UserDateModel({
    required this.id,
    required this.email,
    required this.firstName,
  });

  UserDateModel copyWith({
    int? id,
    String? email,
    String? firstName,
  }) {
    return UserDateModel(
      id: id ?? this.id,
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'email': email,
      'firstName': firstName,
    };
  }

  factory UserDateModel.fromMap(Map<String, dynamic> map) {
    return UserDateModel(
      id: map['id'] as int,
      email: map['email'] as String,
      firstName: map['firstName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserDateModel.fromJson(String source) => UserDateModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserDateModel(id: $id, email: $email, firstName: $firstName)';

  @override
  bool operator ==(covariant UserDateModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.email == email &&
      other.firstName == firstName;
  }

  @override
  int get hashCode => id.hashCode ^ email.hashCode ^ firstName.hashCode;
}

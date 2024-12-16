// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserLoginModel {
  String username;
  String password;
  UserLoginModel({
    required this.username,
    required this.password,
  });

  UserLoginModel fromMap({required Map<String, dynamic> map}) {
    return UserLoginModel(username: map['username'], password: map['password']);
  }

  toMap({required UserLoginModel model}) {
    return {
      'username': model.username,
      'password': model.password,
    };
  }
}

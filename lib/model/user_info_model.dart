// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserInfoModel {
  int id;
  String username;
  String email;
  UserInfoModel({
    required this.id,
    required this.username,
    required this.email,
  });

  static UserInfoModel fromMap({required Map<String, dynamic> map}) {
    return UserInfoModel(
      id: map['id'],
      username: map['username'],
      email: map['email'],
    );
  }
}

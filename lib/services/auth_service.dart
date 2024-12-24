import 'package:auth_and_login/models/user_info_model.dart';
import 'package:dio/dio.dart';

String token = '';
Future login(UserInfoModel userinfo) async {
  Dio dio = Dio();
  try {
    Response response = await dio.post(
      'https://dummyjson.com/auth/login',
      data: userinfo.toMap(),
    );
    if (response.statusCode == 200) {
      print(response.data['accessToken']);
      token = response.data['accessToken'];
      return response.data['accessToken'];
    } else {
      return false;
    }
  } catch (e) {
    print(e);
    return false;
  }
}

Future getProfileInfo() async {
  Dio dio = Dio();
  try {
    Response response = await dio.get(
      'https://dummyjson.com/auth/me',
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    if (response.statusCode == 200) {
      print(response.data);
      return response.data['email'];
    } else {
      return 'invalid token';
    }
  } catch (e) {
    print(e);
    return 'invalid token';
  }
}

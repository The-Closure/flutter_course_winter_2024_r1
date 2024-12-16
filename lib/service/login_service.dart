import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:token_and_storage/config/storage.dart';

import '../model/user_login_model.dart';

String? token;

class M {
  int? id;
  M._({
    required this.id,
  });
  static M m1 = M._(id: 1);
  static getMClass() {
    return m1;
  }
}

loginService({required UserLoginModel model}) async {
  Dio dio = Dio();
  try {
    Response response = await dio.post('https://dummyjson.com/auth/login',
        data: model.toMap(model: model));

    if (response.statusCode == 200) {
     
      log(response.data["accessToken"]);
        // await prefs?.setString('token', response.data["accessToken"]);
      getIt
          .get<SharedPreferences>()
          .setString('token', response.data['accessToken']);
      token = response.data["accessToken"];
      return response.data;
    } else {
      log(response.statusMessage!);
      return response.statusMessage;
    }
  } catch (e) {
    log(e.toString());
    return e.toString();
  }
}

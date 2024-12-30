// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:bloc_lecner_clean_service/config/get_it.dart';
import 'package:bloc_lecner_clean_service/model/data_model.dart';
import 'package:bloc_lecner_clean_service/model/user_model.dart';

import '../model/auth_model.dart';

class AuthService {
  Dio dio;
  AuthService({
    required this.dio,
  });
  Future<DataModel> login({required AuthModel model}) async {
    try {
      Response response = await dio.post('https://dummyjson.com/auth/login',
          data: model.toMap());
      log(response.statusCode.toString());
      if (response.statusCode == 200) {
        getIt
            .get<SharedPreferences>()
            .setString("token", response.data["accessToken"]);
        return UserDateModel.fromMap(response.data);
      } else {
        return ErrorModel(error: response.statusMessage!);
      }
    } catch (e) {
      log(e.toString());
      return ExaptionModel(exaption: e.toString());
    }
  }
}

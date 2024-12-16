import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:token_and_storage/config/storage.dart';

import 'package:token_and_storage/model/user_info_model.dart';


Future<UserInfoModel> getUserInfo() async {
  Dio dio = Dio();

  Response response = await dio.get('https://dummyjson.com/auth/me',
      options: Options(
        headers: {
          //'Authorization': 'Bearer ${prefs!.getString('token')}',
          'Authorization':
              'Bearer ${getIt.get<SharedPreferences>().getString('token')}',
        },
      ));

  return UserInfoModel.fromMap(map: response.data);
}

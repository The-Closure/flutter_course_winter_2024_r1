// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc_lecner_clean_service/config/get_it.dart';
import 'package:bloc_lecner_clean_service/model/user_model.dart';
import 'package:dio/dio.dart';

import 'package:bloc_lecner_clean_service/model/data_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserDataService {
  Dio dio;
  UserDataService({
    required this.dio,
  });
  Future<DataModel> getUserData() async {
    try {
      Response response = await dio.get(
        'https://dummyjson.com/auth/me',
        options: Options(
          headers: {
            'Authorization':
                'Bearer ${getIt.get<SharedPreferences>().getString("token")}'
          },
        ),
      );
      print(response);
      return UserDateModel.fromMap(response.data);
    } catch (e) {
      print(e);
      return ExaptionModel(exaption: e.toString());
    }
  }
}

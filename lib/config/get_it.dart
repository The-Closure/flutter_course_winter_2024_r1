// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

setup() async {
  getIt.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance());
}

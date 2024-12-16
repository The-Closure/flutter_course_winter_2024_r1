import 'package:flutter/material.dart';

import 'package:token_and_storage/config/storage.dart';
import 'package:token_and_storage/view/login_page.dart';

// SharedPreferences? prefs;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  // prefs = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

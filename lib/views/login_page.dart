import 'package:auth_and_login/models/user_info_model.dart';
import 'package:auth_and_login/services/auth_service.dart';
import 'package:auth_and_login/views/error_page.dart';
import 'package:auth_and_login/views/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: username,
                decoration: const InputDecoration(
                  label: Text('Email'),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: password,
                decoration: const InputDecoration(
                  label: Text('Password'),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () async {
                  var result = await login(
                    UserInfoModel(
                      username: username.text,
                      password: password.text,
                    ),
                  );
                  if (result is String) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const HomePage();
                        },
                      ),
                    );
                  } else {
                    username.clear();
                    password.clear();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ErrorPage();
                        },
                      ),
                    );
                  }
                },
                child: const Text(
                  'Login',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

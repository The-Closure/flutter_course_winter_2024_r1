import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:token_and_storage/view/user_page.dart';
import '../model/user_login_model.dart';
import '../service/login_service.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         
          TextField(
            controller: userName,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            controller: password,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                await loginService(
                  model: UserLoginModel(
                      username: userName.text, password: password.text),
                );

                // ignore: use_build_context_synchronously
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const UserPage();
                }));
                // await Future.delayed(Duration(seconds: 1));
              },
              child: const Text('login')),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("back"))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        M m1 = M.getMClass();
        M m2 = M.getMClass();

        if (m1 == m2) {
          m1.id = 2;
          log('ok');
          log(m2.id.toString());
        } else {
          log("no");
        }

        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return LoginPage();
        }));

        // Navigator.of(context).pushReplacement(
        //     MaterialPageRoute(builder: (context) => SecondPage()));
      }),
    );
  }
}

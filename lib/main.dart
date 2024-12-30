import 'package:bloc_lecner_clean_service/bloc/auth_bloc.dart';
import 'package:bloc_lecner_clean_service/bloc_manager/bloc_observer.dart';
import 'package:bloc_lecner_clean_service/model/auth_model.dart';
import 'package:bloc_lecner_clean_service/view/bloc/user_bloc.dart';
import 'package:bloc_lecner_clean_service/view/user_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/get_it.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const AppBlocObserver();
  await setup();
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

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: Builder(builder: (context) {
        return BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is SuccessAuth) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  backgroundColor: Colors.green,
                  content: Text('success ti login'),
                ),
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const UserPage(),
                ),
              );
            }
            if (state is FieldAuth) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  backgroundColor: Colors.amber,
                  content: Text('the user name or the password is not corecct'),
                ),
              );
            }
            if (state is NoInternet) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  backgroundColor: Colors.red,
                  content: Text('there is no internet'),
                ),
              );
            }
          },
          child: Scaffold(
            body: Column(
              children: [
                TextField(
                  controller: username,
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                ),
                TextField(
                  controller: password,
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(LoginEvent(
                        authModel: AuthModel(
                            password: password.text, username: username.text)));
                  },
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

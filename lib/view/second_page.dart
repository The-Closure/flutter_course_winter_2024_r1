
import 'package:flutter/material.dart';
import 'package:token_and_storage/view/login_page.dart';

int id = 0;

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text(id.toString())),
      floatingActionButton: FloatingActionButton(onPressed: () {
        id++;
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => LoginPage()));
      }),
    );
  }
}

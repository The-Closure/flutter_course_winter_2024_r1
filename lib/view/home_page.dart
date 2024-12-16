import 'package:flutter/material.dart';

import 'buttom_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const ButtomPage(),
            ),
          );
        },
        child: const Text('to buttom page'),
      ),
    );
  }
}

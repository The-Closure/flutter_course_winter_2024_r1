import 'package:flutter/material.dart';

class ButtomPage extends StatelessWidget {
  const ButtomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('back')),
    );
  }
}

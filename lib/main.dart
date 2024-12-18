import 'package:flutter/material.dart';
import 'package:responsive_and_adabtive/rsponsive/responsive_page.dart';
import 'package:responsive_and_adabtive/view/modeil_page.dart';
import 'package:responsive_and_adabtive/view/responsive_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResponsivePage(),
    );
  }
}

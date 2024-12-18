import 'package:flutter/material.dart';
import 'package:responsive_and_adabtive/rsponsive/descktop_layout.dart';
import 'package:responsive_and_adabtive/rsponsive/mobile_Layout.dart';
import 'package:responsive_and_adabtive/rsponsive/taplet_layout.dart';

class ResponsivePage extends StatelessWidget {
  const ResponsivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constrate) {
        if (constrate.maxWidth < 425) {
          return MobileLyout();
        } else if (constrate.maxWidth < 650) {
          return TapLetLyout();
        } else {
          return DescktopLyout();
        }
      }),
    );
  }
}

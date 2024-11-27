import 'dart:developer';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int conter = 100;
  int paddingSize = 1;
  bool? isCheck = true;
  bool isSwap = false;
  double slide = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Slider(
              max: 10,
              min: 0,
              label: slide.toInt().toString(),
              activeColor: Colors.black,
              inactiveColor: Colors.amber,
              thumbColor: Colors.grey,
              value: slide,
              divisions: 10,
              onChanged: (newValue) {
                slide = newValue;
                log(newValue.toInt().toString());
                setState(() {});
              },
            ),
            Switch(
                activeColor: Colors.black,
                // activeTrackColor: Colors.amber,
                // inactiveThumbColor: Colors.red,
                // inactiveTrackColor: Colors.blueGrey,
                // hoverColor: Colors.blue.shade100,
                // focusColor: Colors.black87,
                value: isSwap,
                onChanged: (newVaule) {
                  isSwap = newVaule;
                  setState(() {});
                }),
            Checkbox(
                isError: true,
                checkColor: Colors.amber,
                hoverColor: Colors.red.shade100,
                activeColor: Colors.teal,
                tristate: true,
                value: isCheck,
                onChanged: (newVaule) {
                  log(newVaule.toString());

                  setState(() {
                    isCheck = newVaule;
                  });
                }),
            AnimatedPadding(
              padding: EdgeInsets.all(paddingSize * 8.0),
              duration: const Duration(seconds: 1),
              child: AnimatedContainer(
                curve: Curves.bounceInOut,
                width: conter * 2,
                height: conter * 2,
                color: Colors.teal,
                duration: const Duration(seconds: 1),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        log(conter.toString());
        setState(() {
          // conter = conter + 1;
          paddingSize = 10;
        });

        log(conter.toString());
      }),
    );
  }
}

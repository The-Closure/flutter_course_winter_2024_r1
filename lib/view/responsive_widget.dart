import 'package:flutter/material.dart';

class ResponsiveWidgetPage extends StatelessWidget {
  const ResponsiveWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              //width: 200,
              //  height: 1000000,
              color: Colors.teal,
            ),
          ),
          // Container(
          //   width: 200,
          //   color: Colors.black,
          //   child: FittedBox(
          //     alignment: Alignment.bottomRight,
          //     fit: BoxFit.cover,
          //     // child: Container(
          //     //   width: 20,
          //     //   height: 10,
          //     //   color: Colors.blueGrey,
          //     //   // child: const Text(
          //     //   //   'flutter',
          //     //   // ),
          //     // ),
          //     child: Checkbox(value: true, onChanged: (value) {}),
          //   ),
          // ),
          Spacer(
            flex: 2,
          ),
          // Flexible(
          //   // fit: FlexFit.loose,
          //   flex: 2,
          //   child: Container(
          //     color: Colors.yellow,
          //     width: MediaQuery.sizeOf(context).width,

          //     // child: Text('hi'),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class ExtraWidget extends StatelessWidget {
  const ExtraWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AspectRatio(
        aspectRatio: 16 / 16,
        child: Container(
          // width: 500,
          color: Colors.black,
          child: FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.6,
            widthFactor: 0.5,
            child: Container(
              width: 300,
              color: Colors.amber,
            ),
          ),
        ),
      ),
    );
  }
}

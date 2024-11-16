import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.amber,
          ),
          floatingActionButton: FlutterLogo(
            size: 100,
          ),
          bottomNavigationBar: FlutterLogo()),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0X008D376F),
          title: const Text('app bar'),
          leading: const FlutterLogo(),
          actions: const [
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
          ],
        ),
        body: Container(
          color: Colors.teal,
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 50,
                child: Text(
                  maxLines: 2,
                  'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh',
                  style: TextStyle(fontSize: 20),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                width: 20000,
                height: 50,
                color: Colors.teal,
              ),
              FlutterLogo(
                size: 500,
              ),
              FlutterLogo(),
              FlutterLogo(),
              FlutterLogo(),
            ],
          ),
        ),
      ),
    );
  }
}
/*
Container(
          color: Colors.amber,
          child: Container(
            decoration: BoxDecoration(
              gradient:
                  const SweepGradient(endAngle: 5, startAngle: 1, colors: [
                Colors.pink,
                Colors.black,
                Colors.grey,
                Colors.black,
                Colors.yellow,
              ]),
              // gradient: RadialGradient(
              //   tileMode: TileMode.decal,
              //   radius: 0.1,
              //   colors: [
              //     Colors.green.shade400,
              //     Colors.black38,
              //     Colors.green.shade800,
              //   ],
              // ),
              // LinearGradient(
              //   tileMode: TileMode.mirror,
              //   // begin: Alignment.bottomLeft,
              //   // end: Alignment.topRight,
              //   colors: [
              //     Colors.red,
              //     Colors.green,
              //     Colors.black,
              //   ],
              // ),
              color: Colors.teal,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(50),
                bottom: Radius.circular(10),
              ),
              border: Border.all(
                width: 10,
                color: Colors.red.shade900,
                style: BorderStyle.solid,
              ),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(-5, -4),
                    blurRadius: 10),
                BoxShadow(
                    color: Color.fromARGB(255, 0, 0, 0),
                    offset: Offset(5, 4),
                    blurRadius: 10),
              ],
              //shape: BoxShape.circle,
            ),
            width: 500,
            height: 500,
            margin:
                const EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 50),
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
            child: const Text(
              'hello',
              maxLines: 4,
              style: TextStyle(
                color: Colors.amber,
                //backgroundColor: Colors.black,
                fontSize: 50,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
        */
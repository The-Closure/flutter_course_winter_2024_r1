import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const GridViewBuilderPage());
}

// String data = "";
TextEditingController numberController = TextEditingController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: numberController,
                textAlign: TextAlign.end,
                // readOnly: true,
                obscureText: true,
                onChanged: (value) {
                  //      data = value;
                  numberController.text;

                  log(numberController.text);
                },
                onEditingComplete: () {},
                onSubmitted: (value) {
                  // data = value;
                },
                decoration: InputDecoration(
                  // filled: Colors.amber,
                  // fillColor: Colors.amber,
                  // focusColor: Colors.amber,
                  // hoverColor: Colors.amber,
                  // helper: Icon(Icons.phone),
                  helperText: 'enter your number',
                  hintText: '+963',

                  // label: const Icon(Icons.pages),
                  prefix: Text('hi '),
                  prefixIcon: Icon(Icons.access_alarm_rounded),
                  suffix: Text('hello'),
                  suffixIcon: Icon(Icons.access_time_filled_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
            Text(
              numberController.text,
              style: TextStyle(fontSize: 50),
            ),
            Container(
              width: 590,
              height: 590,
              child: GridView(
                // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //   crossAxisCount: 5,
                //   crossAxisSpacing: 5,
                //   mainAxisSpacing: 5,
                //   childAspectRatio: 1 / 1,
                //   mainAxisExtent: 500,
                // ),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  mainAxisExtent: 100,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  childAspectRatio: 4 / 2,
                ),
                children: [
                  Container(
                    color: Colors.teal,
                  ),
                  Container(
                    color: Colors.teal,
                    width: 200,
                    height: 200,
                  ),
                  Container(
                    color: Colors.teal,
                    width: 200,
                    height: 200,
                  ),
                  Container(
                    color: Colors.teal,
                    width: 200,
                    height: 200,
                  ),
                  Container(
                    color: Colors.teal,
                    width: 200,
                    height: 200,
                  ),
                  Container(
                    color: Colors.teal,
                    width: 200,
                    height: 200,
                  ),
                  Container(
                    color: Colors.teal,
                    width: 200,
                    height: 200,
                  ),
                  Container(
                    color: Colors.teal,
                    width: 200,
                    height: 200,
                  ),
                  Container(
                    color: Colors.teal,
                    width: 200,
                    height: 200,
                  ),
                  Container(
                    color: Colors.teal,
                    width: 200,
                    height: 200,
                  ),
                  Container(
                    color: Colors.teal,
                    width: 200,
                    height: 200,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> name = ['mhd', 'abd'];
List<String> lastName = ['mm', 'aa'];

class GridViewBuilderPage extends StatelessWidget {
  const GridViewBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisExtent: 100,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 4 / 2,
            ),
            itemCount: name.length,
            itemBuilder: (context, index) {
              return Container(
                alignment: const Alignment(0, 0),
                color: Colors.teal.withAlpha(150),
                child: Text(
                  "${name[index]}  ${lastName[index]}",
                ),
              );
            }),
      ),
    );
  }
}

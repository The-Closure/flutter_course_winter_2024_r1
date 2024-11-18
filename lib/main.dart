import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class HW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            child: Container(
              width: 200,
              height: 200,
              alignment: Alignment(0, -1),
              child: Text(
                'S',
                style: TextStyle(
                    fontSize: 130,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(350),
                    bottomRight: Radius.circular(350),
                    topRight: Radius.circular(1000),
                    bottomLeft: Radius.circular(1000))),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
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
        body: Container(
          color: Colors.green,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.search,
                size: 50,
                shadows: [
                  Shadow(
                      offset: Offset(-1, -1),
                      color: Colors.white,
                      blurRadius: 20)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Container(
                  //   width: 250,
                  //   height: 250,
                  //   color: Colors.red,
                  //   child: Image.network(
                  //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSU7ayQAfh3Q7oEihJGIuCcD47y7sAGh78bNw&s",
                  //     fit: BoxFit.fitWidth,
                  //   ),
                  // ),
                  // Container(
                  //   width: 250,
                  //   height: 250,
                  //   color: Colors.red,
                  //   child: Image.file(
                  //     File('C:/Users/mosab/Desktop/wallbaper/m.jpg'),
                  //     fit: BoxFit.contain,
                  //   ),
                  // ),
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.red,
                    child: Image.asset(
                      'assets/mk.jpg',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  CircleAvatar(
                    radius: 50,
                    child: Image.asset(
                      'assets/mk.jpg',
                      //  fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 250,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 10, color: Colors.white),
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage(
                          'assets/mk.jpg',
                        ),
                      ),
                    ),
                    child: const Text(
                      'wallpaber',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Container(
                    // width: 250,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            // color: Colors.teal,
                            border: Border.all(width: 5),
                          ),
                          child: const Center(child: Text('hello World')),
                        ),
                        // const SizedBox(
                        //   width: 20,
                        // ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            // padding: ,
                            // margin: ,
                            height: 50,
                            decoration: BoxDecoration(
                              // color: Colors.teal,
                              border: Border.all(width: 5),
                            ),
                            child: const Center(child: Text('hello World')),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      // color: Colors.teal,
                      border: Border.all(width: 5),
                    ),
                    child: const Center(child: Text('hello World')),
                  )
                ],
              ),
              Container(
                color: Colors.teal,
                width: 50,
                height: 50,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.black,
              ),
              Container(
                color: Colors.amber,
                width: 150,
                height: 150,
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  // function() {
  //   print('skjdgf');
  // }

  // function();
  runApp(const MyApp());
}

// void test() {
//   print('object');
// }
PageController onBoardingController = PageController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          controller: onBoardingController,
          // physics: const NeverScrollableScrollPhysics(),
          physics: const BouncingScrollPhysics(),
          // physics: const PageScrollPhysics(),
          reverse: false,
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              alignment: const Alignment(0, 0),
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '1',
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () {
                      print('Hello Flutter');
                      onBoardingController.jumpToPage(2);
                      print(onBoardingController.page);
                      // onBoardingController.jumpTo(600);
                    },
                    child: Container(
                      alignment: const Alignment(0, 0),
                      width: 200,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 6,
                              offset: const Offset(10, 10))
                        ],
                      ),
                      child: const Text(
                        'Go To Last Page(Jump)',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      onBoardingController.nextPage(
                          duration: const Duration(seconds: 1),
                          curve: Curves.bounceIn);
                    },
                    child: Container(
                      alignment: const Alignment(0, 0),
                      width: 200,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 6,
                              offset: const Offset(10, 10))
                        ],
                      ),
                      child: const Text(
                        'Go To Next Page',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: const Alignment(0, 0),
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '2',
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () {
                      onBoardingController.nextPage(
                        duration: const Duration(seconds: 1),
                        curve: Curves.bounceOut,
                      );
                    },
                    child: Container(
                      alignment: const Alignment(0, 0),
                      width: 200,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 6,
                            offset: const Offset(
                              10,
                              10,
                            ),
                          )
                        ],
                      ),
                      child: const Text(
                        'Go To Next Page',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: const Alignment(0, 0),
              color: const Color(0xff6c5b7b),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '3',
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () {
                      // onBoardingController.animateToPage(
                      //   2,
                      //   duration: const Duration(
                      //     seconds: 3,
                      //   ),
                      //   curve: Curves.bounceIn,
                      // );
                      onBoardingController.animateTo(
                        1,
                        duration: const Duration(seconds: 3),
                        curve: Curves.linear,
                      );
                    },
                    child: Container(
                      alignment: const Alignment(0, 0),
                      width: 200,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 6,
                            offset: const Offset(
                              10,
                              10,
                            ),
                          )
                        ],
                      ),
                      child: const Text(
                        'Move Pixels (Animation)',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onLongPress: () {
                      print('Hello');
                    },
                    onTap: () {
                      onBoardingController.previousPage(
                        duration: const Duration(seconds: 1),
                        curve: Curves.ease,
                      );
                    },
                    child: Container(
                      alignment: const Alignment(0, 0),
                      width: 200,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 6,
                            offset: const Offset(
                              10,
                              10,
                            ),
                          )
                        ],
                      ),
                      child: const Text(
                        'Go To Previous Page',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
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

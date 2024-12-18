import 'package:flutter/material.dart';

class LoayoutBuilderPage extends StatelessWidget {
  LoayoutBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    MediaQuery.of(context).size.width;

    return Scaffold(
      body: LayoutBuilder(builder: (context, BoxConstraints constraint) {
        if (constraint.maxWidth < 500) {
          return OrientationBuilder(builder: (context, orientation) {
            if (orientation == Orientation.landscape) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: width / 2,
                      height: height / 2,
                      color: Colors.teal,
                      child: Center(
                        child: Text(
                          MediaQuery.orientationOf(context).name,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: width / 2,
                    height: height / 2,
                    color: Colors.teal,
                  ),
                ],
              );
            } else {
              return Row(
                children: [Center(child: Text('hello word'))],
              );
            }
          });
        } else if (MediaQuery.orientationOf(context).name == "portrait") {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: width / 2,
                  height: height / 2,
                  color: Colors.teal,
                ),
              ),
              Container(
                width: width / 2,
                height: height / 2,
                color: Colors.teal,
              ),
            ],
          );
        }
      }),
    );
  }
}

import 'package:flutter/material.dart';

class MobileLyout extends StatelessWidget {
  const MobileLyout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      height: 100,
                      color: Colors.grey.shade400,
                    );
                  }),
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  height: 100,
                  color: Colors.grey.shade400,
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
/*
OrientationBuilder(
        builder: (context, orentation) {
          if (orentation == Orientation.portrait) {
            return Column(
              children: [
                Expanded(
                  flex: 1,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                      ),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 100,
                          height: 100,
                          color: Colors.grey.shade400,
                        );
                      }),
                ),
                Expanded(
                  flex: 3,
                  child: ListView.builder(itemBuilder: (context, index) {
                    return Container(
                      width: 300,
                      height: 100,
                      color: Colors.grey.shade400,
                    );
                  }),
                )
              ],
            );
          } else {
            return ;
          }
        },
      ),
 */
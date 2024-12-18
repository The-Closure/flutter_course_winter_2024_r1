import 'package:flutter/material.dart';

class TapLetLyout extends StatelessWidget {
  const TapLetLyout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Column(
        children: [
          SizedBox(
            width: 1000,
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 25,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.grey.shade400,
                    ),
                  );
                }),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                SizedBox(
                  width: 500,
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
                ),
                SizedBox(
                  width: 55,
                  child: ListView.builder(itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 50,
                        height: 100,
                        color: Colors.grey.shade400,
                      ),
                    );
                  }),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

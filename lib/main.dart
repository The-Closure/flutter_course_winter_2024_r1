import 'package:flutter/material.dart';

void main() {
  runApp(const ListTileAndCard());
}

class SingleChildScrollViewWithColumnOrRow extends StatelessWidget {
  const SingleChildScrollViewWithColumnOrRow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          reverse: true,
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          //    padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
                alignment: const Alignment(0, 0),
                child: const Text('hello'),
              ),
              const SizedBox(height: 10),
              Container(
                width: 200,
                height: 200,
                color: Colors.teal,
              ),
              const SizedBox(height: 10),
              Container(
                width: 200,
                height: 200,
                color: Colors.teal,
              ),
              const SizedBox(height: 10),
              Container(
                width: 200,
                height: 200,
                color: Colors.teal,
              ),
              const SizedBox(height: 10),
              Container(
                width: 200,
                height: 200,
                color: Colors.black,
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
            // Column(
            //   children: [
            //     Container(
            //       width: 200,
            //       height: 200,
            //       color: Colors.red,
            //       alignment: const Alignment(0, 0),
            //       child: const Text(
            //         '1',
            //         style: TextStyle(
            //           fontSize: 50,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //     ),
            ListView(
          // reverse: true,
          // scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          // padding: const EdgeInsets.all(50),
          children: [
            // Column(
            //   children: [
            //     Container(
            //       width: 200,
            //       height: 200,
            //       color: Colors.red,
            //       alignment: const Alignment(0, 0),
            //       child: const Text(
            //         '1',
            //         style: TextStyle(
            //           fontSize: 50,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
              alignment: const Alignment(0, 0),
              child: const Text(
                '1',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
              height: 5,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 5,
              height: 5,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 5,
              height: 5,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 5,
              height: 5,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 5,
              height: 5,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.black,
              alignment: const Alignment(0, 0),
              child: const Text(
                '1',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
              height: 5,
            ),
          ],
        ),
        //   ],
        // ),
      ),
    );
  }
}

List<String> title = [
  'title 1',
  'title 2',
  'title 3',
  'title 4',
  'title 5',
  'title 6',
  'title 7'
];

class ListViewWithBuilderPage extends StatelessWidget {
  const ListViewWithBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: title.length,
          itemBuilder: (BuildContext context, int index) {
            print(title[index]);
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blueGrey,
                alignment: const Alignment(0, 0),
                child: Text(
                  title[index],
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

List<String> name = [
  "adnan",
  "carmen",
  "muneer",
  "abd",
];
List<String> lastName = [
  "diyh",
  'al shoufi',
  'al kanafani',
  'al rahman',
];

class ListViewWithSeparatedPage extends StatelessWidget {
  const ListViewWithSeparatedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.separated(
          // reverse: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
              width: 200,
              height: 200,
              alignment: const Alignment(0, 0),
              color: Colors.deepPurple,
              child: Text(
                "${name[index]} ${lastName[index]}",
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.black,
              thickness: 10,
            );
            // return const VerticalDivider(
            //   color: Colors.black,
            //   thickness: 10,
            // );
          },
          itemCount: name.length,
        ),
      ),
    );
  }
}

class ListTileAndCard extends StatelessWidget {
  const ListTileAndCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Card(
                color: Colors.teal,
                shadowColor: Colors.amber,
                borderOnForeground: true,
                margin: const EdgeInsets.all(100),
                elevation: 20,
                child: Column(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.red,
                      alignment: const Alignment(0, 0),
                      child: const Text(
                        '1',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text("User Name"),
                    Text("+96421566452"),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            color: Colors.red,
                            alignment: const Alignment(0, 0),
                            child: const Text(
                              '1',
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            color: Colors.red,
                            alignment: const Alignment(0, 0),
                            child: const Text(
                              '1',
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 300,
                child: ListTile(
                  onTap: () {
                    print('hello');
                  },
                  leading: const CircleAvatar(),
                  title: Text(name[0]),
                  subtitle: Text(lastName[0]),
                  trailing: const Icon(
                    Icons.more,
                    color: Colors.black,
                  ),
                  iconColor: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

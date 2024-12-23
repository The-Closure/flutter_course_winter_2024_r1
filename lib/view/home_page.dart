import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDismissible = false;

  ExpansionTileController controller = ExpansionTileController();

  String popUpItem = 'item 1';
  String? dropdownItem = 'item 6';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(
              child: Text('home'),
            ),
            Tab(
              child: Text('story'),
            ),
            Tab(
              child: Text('my page'),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Container(
            color: Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ExpansionTile(
                  // enabled: false,
                  showTrailingIcon: false,
                  backgroundColor: Colors.white,
                  collapsedTextColor: Colors.black,
                  collapsedBackgroundColor: Colors.grey.shade400,
                  trailing: const Icon(Icons.open_in_browser),
                  iconColor: Colors.amber,
                  initiallyExpanded: false,
                  controller: controller,
                  onExpansionChanged: (value) {
                    print(value);
                  },
                  title: const Text('Asus Laptop'),
                  children: const [
                    Text('core i9_11'),
                    Text('16 RAM'),
                    Text('1T'),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    if (controller.isExpanded == true) {
                      controller.collapse();
                    } else {
                      controller.expand();
                    }
                  },
                  child: const Text('open ExpansionTitle'),
                ),
                DropdownButton<String>(
                  // hint: Text('chose item'),
                  value: dropdownItem,
                  items: const [
                    DropdownMenuItem(
                      value: "item 4",
                      child: Text('item 4'),
                    ),
                    DropdownMenuItem(
                      value: "item 5",
                      child: Text('item 5'),
                    ),
                    DropdownMenuItem(
                      value: "item 6",
                      child: Text('item 6'),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {});
                    dropdownItem = value;
                  },
                ),
                PopupMenuButton(
                    initialValue: popUpItem,
                    onSelected: (value) {
                      setState(() {});
                      popUpItem = value;
                      print(value);
                    },
                    itemBuilder: (context) {
                      return const [
                        PopupMenuItem(
                          value: "item 1",
                          child: Text('item 1'),
                        ),
                        PopupMenuItem(
                          value: "item 2",
                          child: Text('item 2'),
                        ),
                        PopupMenuItem(
                          value: "item 3",
                          child: Text('item 3'),
                        ),
                      ];
                    }),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return Dialog(
                            child: SizedBox(
                              width: 200,
                              height: 200,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text('Dialog Body'),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        height: 100,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text('close'),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text('ok'),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: const Text('Dialog'),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.teal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              iconPadding: const EdgeInsets.all(10),
                              icon: const Icon(
                                Icons.work_rounded,
                                color: Colors.amber,
                              ),
                              iconColor: Colors.lightBlue,
                              title: const Text('Alirt Dialog Body'),
                              content: const Text('mosab@gmail.com'),
                              actions: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('back'))
                              ],
                            );
                          });
                    },
                    child: const Text('Alirt Dialog'))
              ],
            ),
          ),
          Container(
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => const AboutDialog(
                        applicationIcon: Icon(Icons.info),
                        applicationName: 'Extra Widget',
                        applicationVersion: '1.0.0',
                      ),
                    );
                  },
                  child: const Text('About Dialog'),
                ),
              ],
            ),
          ),
        ]),
        floatingActionButton: FloatingActionButton(onPressed: () {
          showModalBottomSheet(
              isDismissible: isDismissible,
              context: context,
              builder: (context) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 200,
                  width: width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Center(child: Text('hello World')),
                      Tooltip(
                        message: "pressed to go back",
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('back'),
                        ),
                      ),
                    ],
                  ),
                );
              });
        }),
      ),
    );
  }
}

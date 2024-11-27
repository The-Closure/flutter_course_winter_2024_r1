import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intro_to_state_full/view/home_page.dart';
import 'package:intro_to_state_full/view/profile_page.dart';
import 'package:intro_to_state_full/view/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationBarPage(),
    );
  }
}

List<Widget> page = const [
  HomePage(),
  ProfilePage(),
  SettingPage(),
];

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  int activePage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        shape: const OutlineInputBorder(),
        child: Column(
          children: [
            // DrawerHeader(child: CircleAvatar()),
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(),
              accountName: Text('mosab'),
              accountEmail: Text('mosab@gmail.com'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.teal,
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        animationDuration: const Duration(seconds: 5),
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        // backgroundColor: Colors.grey,
        indicatorShape:
            BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
        selectedIndex: activePage,
        onDestinationSelected: (value) {
          log(value.toString());
          setState(() {
            activePage = value;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'profiel'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'setting'),
        ],
      ),
      body: page[activePage],
    );
  }
}

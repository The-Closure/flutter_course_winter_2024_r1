// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CatPage(),
    );
  }
}

class CatPage extends StatefulWidget {
  const CatPage({super.key});

  @override
  State<CatPage> createState() => _CatPageState();
}

class _CatPageState extends State<CatPage> {
  dynamic catResult;
  dynamic studentResult;
  Cat? cat;
  Student? student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          catResult = await getOneCat();
          cat = Cat.fromMap(catResult);
          print(catResult);
          studentResult = await getOneStudent();
          student = Student.fromMap(studentResult);
          print(studentResult);
          setState(() {});
        },
        child: const Icon(Icons.pets),
      ),
      body: Center(
        child: catResult == null && studentResult ==null
            ? const CircularProgressIndicator()
            : Column(
                children: [
                  ListTile(
                    // title: Text(result['name']),
                    title: Text(cat!.name),
                    // subtitle: Text(result['description']),
                    subtitle: Text(cat!.description),
                    // leading: Image.network(result['image']),
                    leading: Image.network(cat!.image),
                  ),
                  ListTile(
                    // title: Text(result['name']),
                    title: Text(student!.name),
                    // subtitle: Text(result['description']),
                    subtitle: Text(student!.email),
                    // leading: Image.network(result['image']),
                    leading: Image.network(student!.image),
                  ),
                ],
              ),
      ),
    );
  }
}

getOneCat() async {
  final dio = Dio();
  var response = await dio.get('https://www.freetestapi.com/api/v1/cats/2');
  return response.data;
}

getOneStudent() async {
  final dio = Dio();
  var response =
      await dio.get('https://www.freetestapi.com/api/v1/students/10');
  return response.data;
}

class Student {
  int id;
  String name;
  String image;
  String email;
  Student({
    required this.id,
    required this.name,
    required this.image,
    required this.email,
  });
  static fromMap(Map<String, dynamic> map) {
    return Student(
      id: map['id'],
      name: map['name'],
      image: map['image'],
      email: map['email'],
    );
  }
}

class Cat {
  int id;
  String name;
  String description;
  String image;

  Cat(
      {required this.id,
      required this.name,
      required this.description,
      required this.image});

  static fromMap(Map<String, dynamic> map) {
    return Cat(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      image: map['image'],
    );
  }
}

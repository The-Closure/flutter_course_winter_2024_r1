// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/post_model.dart';
import '../services/post_service.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  Map<String, dynamic>? mapOfPost;
  PostModel? post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // * use it to fetch data with dio package
          mapOfPost = await getOnePostWithDio();

          // ! use it to fetch data with http package
          // mapOfPost = await getOnePostWithHttp();
          post = PostModel.fromMap(mapOfPost!);
          setState(() {});
          print(mapOfPost);
        },
        child: const Icon(
          Icons.post_add,
        ),
      ),
      body: Center(
        child: post == null
            ? const CircularProgressIndicator()
            : ListTile(
                leading: CircleAvatar(
                  child: Text(post!.id.toString()),
                ),
                title: Text(post!.title.toString()),
                subtitle: Text(post!.body),
              ),
      ),
    );
  }
}





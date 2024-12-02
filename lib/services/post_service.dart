import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

import '../models/post_model.dart';

Future<dynamic> getOnePostWithDio() async {
  Dio dio = Dio();
  Response response =
      await dio.get('https://jsonplaceholder.typicode.com/posts/1');
  return response.data;
}

Future<dynamic> getAllPosts() async {
  Dio dio = Dio();
  try {
    Response response =
        await dio.get('https://jsonplaceholder.typicode.com/posts');
    if (response.statusCode == 200) {
      List<PostModel> posts = [];
      for (var i = 0; i < response.data.length; i++) {
        var post = PostModel.fromMap(response.data[i]);
        posts.add(post);
      }
      return posts;
    } else {
      return [
        PostModel(
            id: -1, title: 'Exception', body: 'Check your internet connection')
      ];
    }
  } catch (e) {
    print(e);
    return [
      PostModel(
          id: -1, title: 'Exception', body: 'Check your internet connection')
    ];
  }
}


// ! use it if you want to get data with http

// Future<dynamic> getOnePostWithHttp() async {
//   Uri uri = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
//   var response = await http.get(uri);
//   Map<String, dynamic> mapObject = jsonDecode(response.body);
//   return mapObject;
// }

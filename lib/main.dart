import 'package:flutter/material.dart';
import 'package:rest_api_round_2/view/list_of_posts_page.dart';

import 'view/post_page.dart';
import 'view/post_page_with_builder.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListOfPostsPage(),
    );
  }
}

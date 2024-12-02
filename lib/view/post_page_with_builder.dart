import 'package:flutter/material.dart';
import 'package:rest_api_round_2/view/post_page.dart';

import '../models/post_model.dart';
import '../services/post_service.dart';

class PostPageWithBuilder extends StatelessWidget {
  const PostPageWithBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getOnePostWithDio(),
          builder: (context, snapshot) {
            print(snapshot.data);
            if (snapshot.hasData) {
              PostModel post = PostModel.fromMap(snapshot.data);
              return Center(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(post.id.toString()),
                  ),
                  title: Text(post.title.toString()),
                  subtitle: Text(post.body),
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}

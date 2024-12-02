import 'package:flutter/material.dart';
import 'package:rest_api_round_2/models/post_model.dart';
import 'package:rest_api_round_2/services/post_service.dart';

class ListOfPostsPage extends StatelessWidget {
  const ListOfPostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getAllPosts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {

            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(
                        snapshot.data[index].id.toString(),
                      ),
                    ),
                    title: Text(snapshot.data[index].title.toString()),
                    subtitle: Text(snapshot.data[index].body),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('check internt connection'),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

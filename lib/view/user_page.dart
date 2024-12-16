import 'package:flutter/material.dart';
import 'package:token_and_storage/service/get_user_info.dart';


class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getUserInfo(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text(snapshot.data!.id.toString()),
                ),
                title: Text(snapshot.data!.username),
                subtitle: Text(snapshot.data!.email),
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

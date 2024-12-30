import 'package:bloc_lecner_clean_service/view/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc()..add(GetUserEvent()),
      child: Scaffold(
        body: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if (state is SuccessToGetUser) {
              return Center(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(state.userDateModel.id.toString()),
                  ),
                  title: Text(state.userDateModel.firstName),
                  subtitle: Text(state.userDateModel.email),
                ),
              );
            } else if (state is Field) {
              return Center(
                child: Text(state.errorModel.exaption),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}

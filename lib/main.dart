import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intro_to_bloc/bloc_conter/bloc_conter.dart';
import 'package:intro_to_bloc/bloc_conter/event_conter.dart';
import 'package:intro_to_bloc/bloc_conter/state_conter.dart';
import 'package:intro_to_bloc/lamp_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LampPage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocProvider(
          create: (context) => BlocConter(),
          child: Builder(builder: (context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<BlocConter, StateConter>(
                  builder: (context, state) {
                    if (state is AddToConterState) {
                      return Text(state.conter.toString());
                    } else if (state is InitState) {
                      return Text("${context.watch<BlocConter>().conter}");
                    } else if (state is RemoveFromConterState) {
                      return Text("conter is ${state.conter}");
                    } else {
                      return const CircularProgressIndicator();
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        context.read<BlocConter>().add(IncremaentEvent());
                      },
                      icon: const Icon(Icons.add),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    IconButton(
                      onPressed: () {
                        context.read<BlocConter>().add(DecrementEvent());
                      },
                      icon: const Icon(Icons.remove),
                    ),
                  ],
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}

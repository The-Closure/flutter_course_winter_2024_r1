import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intro_to_bloc/bloc/lamp_bloc.dart';

class LampPage extends StatelessWidget {
  const LampPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LampBloc()..add(TurnLampOn()),
      child: Builder(builder: (context) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<LampBloc, LampState>(
                builder: (context, state) {
                  if (state is LampIsOn) {
                    return Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: state.lampColor,
                          borderRadius: BorderRadius.circular(100)),
                    );
                  } else if (state is LampIsOff) {
                    return Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: state.lampColor,
                          borderRadius: BorderRadius.circular(100)),
                    );
                  } else if (state is LampIsBroken) {
                    return Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: state.lampColor,
                          borderRadius: BorderRadius.circular(100)),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      context.read<LampBloc>().add(TurnLampOn());
                    },
                    icon: const Icon(Icons.emoji_objects),
                  ),
                  IconButton(
                    onPressed: () {
                      context.read<LampBloc>().add(TurnLampOff());
                    },
                    icon: const Icon(Icons.emoji_objects_outlined),
                  )
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}

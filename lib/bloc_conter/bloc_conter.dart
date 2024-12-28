import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intro_to_bloc/bloc_conter/event_conter.dart';
import 'package:intro_to_bloc/bloc_conter/state_conter.dart';

class BlocConter extends Bloc<EventConter, StateConter> {
  int conter = 0;
  BlocConter() : super(InitState(conter: 0)) {
    on<IncremaentEvent>((event, emit) async {
      emit(LoadingState());
      await Future.delayed(const Duration(seconds: 1));
      conter++;
      log(conter.toString());
      emit(AddToConterState(conter: conter));
    });

    on<DecrementEvent>((event, emit) async {
      emit(LoadingState());
      await Future.delayed(const Duration(seconds: 1));
      conter--;
      emit(RemoveFromConterState(conter: conter));
    });
  }
}

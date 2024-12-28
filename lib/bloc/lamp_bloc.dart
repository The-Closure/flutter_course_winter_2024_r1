import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'lamp_event.dart';
part 'lamp_state.dart';

class LampBloc extends Bloc<LampEvent, LampState> {
  int lampUsed = 0;
  LampBloc() : super(LampInitial()) {
    on<TurnLampOn>((event, emit) async {
      lampUsed++;
      await Future.delayed(const Duration(seconds: 2));
      if (lampUsed < 5) {
        emit(LampIsOn(lampColor: Colors.amber));
      } else {
        emit(LampIsBroken(lampColor: Colors.black));
      }
    });
    on<TurnLampOff>((event, emit) {
      lampUsed++;
      if (lampUsed < 5) {
        emit(LampIsOff(lampColor: Colors.grey));
      } else {
        emit(LampIsBroken(lampColor: Colors.black));
      }
    });
  }
}

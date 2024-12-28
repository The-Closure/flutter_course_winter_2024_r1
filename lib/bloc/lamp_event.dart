part of 'lamp_bloc.dart';

@immutable
sealed class LampEvent {}

class TurnLampOn extends LampEvent {}

class TurnLampOff extends LampEvent {}


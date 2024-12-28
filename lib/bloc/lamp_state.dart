// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'lamp_bloc.dart';

@immutable
sealed class LampState {}

final class LampInitial extends LampState {}

// ignore: must_be_immutable
class LampIsOn extends LampState {
  Color lampColor;
  LampIsOn({
    required this.lampColor,
  });
}

// ignore: must_be_immutable
class LampIsOff extends LampState {
  Color lampColor;
  LampIsOff({
    required this.lampColor,
  });
}

// ignore: must_be_immutable
class LampIsBroken extends LampState {
  Color lampColor;
  LampIsBroken({
    required this.lampColor,
  });
}

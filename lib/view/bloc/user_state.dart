// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'user_bloc.dart';

@immutable
sealed class UserState {}

final class UserInitial extends UserState {}

// ignore: must_be_immutable
class SuccessToGetUser extends UserState {
  UserDateModel userDateModel;
  SuccessToGetUser({
    required this.userDateModel,
  });
}

// ignore: must_be_immutable
class Field extends UserState {
  ExaptionModel errorModel;
  Field({
    required this.errorModel,
  });
}

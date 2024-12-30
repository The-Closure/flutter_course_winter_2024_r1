// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

// ignore: must_be_immutable
class LoginEvent extends AuthEvent {
  AuthModel authModel;
  LoginEvent({
    required this.authModel,
  });
}

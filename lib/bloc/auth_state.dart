part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class SuccessAuth extends AuthState {}

final class FieldAuth extends AuthState {}

final class NoInternet extends AuthState {}

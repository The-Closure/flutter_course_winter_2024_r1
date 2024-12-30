import 'package:bloc/bloc.dart';
import 'package:bloc_lecner_clean_service/model/auth_model.dart';
import 'package:bloc_lecner_clean_service/model/data_model.dart';
import 'package:bloc_lecner_clean_service/model/user_model.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../service/auth_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      DataModel temp =
          await AuthService(dio: Dio()).login(model: event.authModel);
  
      if (temp is UserDateModel) {
        emit(SuccessAuth());
      } else if (temp is ErrorModel) {
        emit(FieldAuth());
      } else {
        emit(NoInternet());
      }
    });
  }
}

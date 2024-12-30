import 'package:bloc/bloc.dart';
import 'package:bloc_lecner_clean_service/model/data_model.dart';
import 'package:bloc_lecner_clean_service/model/user_model.dart';
import 'package:bloc_lecner_clean_service/service/user_data_service.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<GetUserEvent>((event, emit) async {
      DataModel temp = await UserDataService(dio: Dio()).getUserData();

      if (temp is UserDateModel) {
        emit(SuccessToGetUser(userDateModel: temp));
      } else if (temp is ExaptionModel) {
        emit(Field(errorModel: temp));
      }
      
    });
  }
}

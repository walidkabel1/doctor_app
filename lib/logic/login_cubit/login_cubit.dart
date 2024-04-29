import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_project_doctor/models/login_model.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  LoginCubit get(context) => BlocProvider.of(context);

  void login(LoginModel loginModel) async {
    emit(LoginLoading());
    try {
      final response = await Dio().post(
        'https://ahmedhamdy.pythonanywhere.com/users/login/',
        data: loginModel.toJson(),
      );
      if (response.statusCode == 200) {
        emit(LoginSuccess(loginModel));
      } else {
        emit(
          LoginError(
            error: response.statusMessage.toString(),
          ),
        );
      }
    } catch (e) {
      emit(
        LoginError(
          error: e.toString(),
        ),
      );
    }
  }
}

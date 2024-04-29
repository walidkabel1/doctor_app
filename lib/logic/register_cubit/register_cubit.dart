import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import '../../models/register_model.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  RegisterCubit get(context) => BlocProvider.of(context);

  // final RegisterModel registerModel = RegisterModel();

  void register(RegisterModel registerModel) async {
    emit(RegisterLoading());
    try {
      final response = await Dio().post(
        'https://ahmedhamdy.pythonanywhere.com/users/registration/',
        data: registerModel.toJson(),
      );
      if (response.statusCode == 201 || response.statusCode == 200) {
        emit(RegisterSuccess(registerModel));
      } else {
        switch (response.statusCode) {
          case 400: // Bad Request
            emit(RegisterError(error: "Invalid registration data"));
            break;
          case 401: // Unauthorized
            emit(RegisterError(error: "Unauthorized access"));
            break;
          case 422: // Unprocessable Entity
            emit(RegisterError(error: "Registration failed: ${response.data}"));
            break;
          default:
            emit(RegisterError(
                error:
                    "Registration failed with status code: ${response.statusCode}"));
        }
        print(response.data.toString());
      }
    } catch (e) {
      // Handle other exceptions
      emit(RegisterError(
          error: "An unexpected error occurred: ${e.toString()}"));
    }
  }
}

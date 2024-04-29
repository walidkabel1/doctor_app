import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_project_doctor/core/cache_helper.dart';

part 'generate_otp_state.dart';

class GenerateOtpCubit extends Cubit<GenerateOtpState> {
  GenerateOtpCubit() : super(GenerateOtpInitial());

  GenerateOtpCubit get(context) => BlocProvider.of(context);

  void generateOtp() async {
    emit(GenerateOtpLoading());
    try {
      final response = await Dio().post(
        'https://ahmedhamdy.pythonanywhere.com/users/generate-otp/',
        data: {
          'email': CacheHelper.getEmail(),
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        emit(GenerateOtpSuccess(message: 'OTP Generated Successfully'));
      } else {
        emit(
          GenerateOtpError(error: "Error Occurred while generating OTP"),
        );
      }
      emit(GenerateOtpSuccess(message: 'OTP Generated Successfully'));
    } catch (e) {
      emit(
        GenerateOtpError(
          error: e.toString(),
        ),
      );
    }
  }
}

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_project_doctor/core/cache_helper.dart';

part 'verify_otp_state.dart';

class VerifyOtpCubit extends Cubit<VerifyOtpState> {
  VerifyOtpCubit() : super(VerifyOtpInitial());

  VerifyOtpCubit get(context) => BlocProvider.of(context);
  String otpNum = '';

  void verifyOtp() async {
    emit(VerifyOtpLoading());
    try {
      final response = await Dio().post(
        'https://ahmedhamdy.pythonanywhere.com/users/verify-otp/',
        data: {
          'otp': otpNum,
          'email': CacheHelper.getEmail(),
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        emit(VerifyOtpSuccess(message: 'OTP Verified Successfully'));
      } else {
        emit(
          VerifyOtpError(error: "Error Occurred while verifying OTP"),
        );
        log(response.data.toString());
      }
    } catch (e) {
      emit(
        VerifyOtpError(
          error: e.toString(),
        ),
      );
      log(e.toString());
    }
  }
}

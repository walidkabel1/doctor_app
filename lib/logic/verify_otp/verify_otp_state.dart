part of 'verify_otp_cubit.dart';

@immutable
abstract class VerifyOtpState {}

class VerifyOtpInitial extends VerifyOtpState {}

class VerifyOtpLoading extends VerifyOtpState {}

class VerifyOtpSuccess extends VerifyOtpState {
  final String message;

  VerifyOtpSuccess({required this.message});
}

class VerifyOtpError extends VerifyOtpState {
  final String error;

  VerifyOtpError({required this.error});
}
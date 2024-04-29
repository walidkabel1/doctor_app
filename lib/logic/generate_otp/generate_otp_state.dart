part of 'generate_otp_cubit.dart';

@immutable
abstract class GenerateOtpState {}

class GenerateOtpInitial extends GenerateOtpState {}

class GenerateOtpLoading extends GenerateOtpState {}

class GenerateOtpSuccess extends GenerateOtpState {
  final String message;

  GenerateOtpSuccess({required this.message});
}

class GenerateOtpError extends GenerateOtpState {
  final String error;

  GenerateOtpError({required this.error});
}

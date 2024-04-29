import 'package:code_input/code_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project_doctor/core/cache_helper.dart';
import 'package:new_project_doctor/layout/home_layout.dart';
import 'package:new_project_doctor/logic/generate_otp/generate_otp_cubit.dart';
import 'package:new_project_doctor/logic/verify_otp/verify_otp_cubit.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const Icon(Icons.arrow_back_ios_new_outlined),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: BlocConsumer<VerifyOtpCubit, VerifyOtpState>(
        listener: (context, state) {
          if (state is VerifyOtpSuccess) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const HomeLayout(),
              ),
            );
          } else if (state is VerifyOtpError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is VerifyOtpLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            String email = CacheHelper.getEmail();
            return SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 45),
                    Image.asset(
                      "assets/icons/NurseCare-removebg-preview 1.png",
                      height: 150,
                      width: 150,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(height: 70),
                    Container(
                      height: 600,
                      width: double.infinity,
                      color: const Color(0xff83C5D3),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Column(
                            children: [
                              const SizedBox(height: 20),
                              const Text(
                                "OTP Verification",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 300,
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Column(
                                        children: [
                                          const Text(
                                            'please type verification code sent to',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w200,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(email),
                                        ],
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Back',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 20),
                              Center(
                                child: CodeInput(
                                  length: 6,
                                  keyboardType: TextInputType.number,
                                  builder: CodeInputBuilders.darkRectangle(
                                      emptySize: Size(35.w, 50.h),
                                      borderRadius:
                                          BorderRadius.circular(10.r)),
                                  spacing: 5.w,
                                  onDone: (value) {
                                    context.read<VerifyOtpCubit>().otpNum =
                                        value;
                                  },
                                  onFilled: (value) {
                                    context.read<VerifyOtpCubit>().otpNum =
                                        value;
                                  },
                                ),
                              ),
                              const SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () {
                                  context.read<VerifyOtpCubit>().verifyOtp();
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) =>
                                  //           const ProfileScreen()),
                                  // );
                                },
                                style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                    const Color(0xff084585).withOpacity(0.9),
                                  ),
                                ),
                                child: const Text(
                                  'Verify',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Don’t receive the OTP?  ',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      final generateOtpCubit =
                                          BlocProvider.of<GenerateOtpCubit>(
                                              context);
                                      generateOtpCubit.generateOtp();
                                    },
                                    child: const Text(
                                      ' Resend',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

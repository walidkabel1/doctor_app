import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_project_doctor/core/cache_helper.dart';
import 'package:new_project_doctor/features/otp/otp_view.dart';
import 'package:new_project_doctor/logic/generate_otp/generate_otp_cubit.dart';
import 'package:new_project_doctor/logic/register_cubit/register_cubit.dart';
import 'package:new_project_doctor/models/register_model.dart';

class UploadIdPage extends StatelessWidget {
  const UploadIdPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments =
        (ModalRoute.of(context)!.settings.arguments) as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios_new_outlined)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const UploadSection(
              text: "Upload Your National ID",
              imageurl: 'assets/image/bro.png'),
          const Divider(
              color: Color(0xff83C5D3),
              thickness: 1,
              indent: 80,
              endIndent: 80),
          const UploadSection(
              text: 'Upload Your certificate',
              imageurl: 'assets/image/CertificationNurse.png'),
          const Divider(
              color: Color(0xff83C5D3),
              thickness: 1,
              indent: 80,
              endIndent: 80),
          const UploadSection(
              text: 'Upload Your Selfie',
              imageurl: 'assets/image/selfiNurse.png'),
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: SizedBox(
              height: 47,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      backgroundColor: const Color(0xff084585)),
                  onPressed: () {
                    CacheHelper.saveEmail(arguments['v3']);

                    try {
                      context.read<RegisterCubit>().register(
                            RegisterModel(
                              firstName: arguments["v4"],
                              lastName: arguments["v5"],
                              username: arguments["v8"],
                              email: arguments["v3"],
                              nationalId: arguments["v6"],
                              password: arguments["v7"],
                              password2: arguments["v2"],
                            ),
                          );
                    } on Exception catch (e) {
                      print(e.toString());
                    }

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const OtpView()),
                    );
                    final generateOtpCubit =
                        BlocProvider.of<GenerateOtpCubit>(context);
                    generateOtpCubit.generateOtp();
                  },
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffffffff)),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

class UploadSection extends StatelessWidget {
  const UploadSection({super.key, required this.text, required this.imageurl});
  final String text, imageurl;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
              color: Color(0xff000000)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: 140,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border:
                        Border.all(color: const Color(0xff09448A), width: 2)),
                child: Image.asset(imageurl),
              ),
            ),
            const SizedBox(
              width: 32,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    backgroundColor: const Color(0xff084585)),
                onPressed: () {},
                child: const Text(
                  'Upload',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ))
          ],
        ),
      ],
    );
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: SizedBox(
        height: 47,
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                backgroundColor: const Color(0xff084585)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OtpView()),
              );
            },
            child: const Text(
              'Sign up',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffffffff)),
            )),
      ),
    );
  }
}

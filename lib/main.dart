import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project_doctor/core/cache_helper.dart';
import 'package:new_project_doctor/features/services/bloc_observer.dart';
import 'package:new_project_doctor/features/splash_view/splash_view.dart';
import 'package:new_project_doctor/logic/generate_otp/generate_otp_cubit.dart';
import 'package:new_project_doctor/logic/search_cubit/search_cubit.dart';
import 'package:new_project_doctor/logic/verify_otp/verify_otp_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,

      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<VerifyOtpCubit>(
              create: (context) => VerifyOtpCubit(),
            ),
            BlocProvider<GenerateOtpCubit>(
              create: (context) => GenerateOtpCubit()..generateOtp(),
            ),
            BlocProvider<SearchCubit>(
              create: (context) => SearchCubit(),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'App for intern',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              // fontFamily: 'Nunito',
              useMaterial3: true,
            ),
            home: child,
          ),
        );
      },
      child: const SplashView(),
      // child: const ServicesLayout(),
    );
  }
}

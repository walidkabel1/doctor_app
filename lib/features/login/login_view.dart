import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_project_doctor/layout/home_layout.dart';
import 'package:new_project_doctor/logic/login_cubit/login_cubit.dart';
import 'package:new_project_doctor/models/login_model.dart';

import '../register/register_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginState();
}

class _LoginState extends State<LoginView> {
  bool _isVisible = true;
  late final TextEditingController _userNameController;
  late final TextEditingController _passwordController;
  late final _formKey;

  @override
  void initState() {
    super.initState();
    _userNameController = TextEditingController();
    _passwordController = TextEditingController();
    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => LoginCubit(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
          ),
          backgroundColor: const Color(0xff83C5D3),
        ),
        backgroundColor: const Color(0xff83C5D3),
        body: Form(
          key: _formKey,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 15,
                  left: 15,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icons/NurseCare-removebg-preview 1.png',
                        height: 200,
                        width: 180,
                      ),
                      const Center(
                        child: Text(
                          "Welcome Back ",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: _userNameController,
                        onTapOutside: (event) =>
                            FocusManager.instance.primaryFocus?.unfocus(),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return '* Username is required';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hintText: 'User Name',
                            filled: true,
                            fillColor:
                                const Color(0xffFFFFFF).withOpacity(0.4)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _passwordController,
                        onTapOutside: (event) =>
                            FocusManager.instance.primaryFocus?.unfocus(),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return '* Password is required';
                          } else if (value.length < 7) {
                            return '* Password must be at least 7 char';
                          }
                          return null;
                        },
                        obscureText: _isVisible,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                _isVisible = !_isVisible;
                                setState(() {});
                              },
                              icon: Icon(
                                _isVisible
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
                            hintText: 'Password',
                            filled: true,
                            fillColor:
                                const Color(0xffFFFFFF).withOpacity(0.4)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      BlocConsumer<LoginCubit, LoginState>(
                        listener: (context, state) {
                          if (state is LoginSuccess) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeLayout(),
                              ),
                            );
                          } else if (state is LoginError) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(state.error),
                              ),
                            );
                          }
                        },
                        builder: (context, state) {
                          if (state is LoginLoading) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          } else {
                            return ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  context.read<LoginCubit>().login(
                                        LoginModel(
                                          username: _userNameController.text,
                                          password: _passwordController.text,
                                        ),
                                      );
                                }
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  const Color(0xff084585).withOpacity(0.9),
                                ),
                              ),
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            );
                          }
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Don\'t have account?',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegisterView(),
                                ),
                              );
                            },
                            child: const Text(
                              'Sign up',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icons/WhatsApp Image 2024-04-01 at 10.16.56 PM (2).jpeg',
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          Image.asset(
                            'assets/icons/WhatsApp Image 2024-04-01 at 10.16.56 PM (1).jpeg',
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          Image.asset(
                            'assets/icons/WhatsApp Image 2024-04-01 at 10.16.56 PM.jpeg',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

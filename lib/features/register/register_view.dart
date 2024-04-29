import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_project_doctor/features/login/login_view.dart';
import 'package:new_project_doctor/features/otp/otp_view.dart';
import 'package:new_project_doctor/features/upload_ids/upload_id.dart';
import 'package:new_project_doctor/logic/register_cubit/register_cubit.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _LoginState();
}

class _LoginState extends State<RegisterView> {
  bool isVisible = true;
  late final TextEditingController _userNameController;
  late final TextEditingController _firstNameController;
  late final TextEditingController _lastNameController;
  late final TextEditingController _passwordController;
  late final TextEditingController _confirmPasswordController;
  late final TextEditingController _emailController;
  late final TextEditingController _nationalIdController;
  late final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _userNameController = TextEditingController();
    _passwordController = TextEditingController();
    _emailController = TextEditingController();
    _nationalIdController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _passwordController.dispose();
    _emailController.dispose();
    _nationalIdController.dispose();
    _confirmPasswordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RegisterCubit>(
          create: (context) => RegisterCubit(),
        ),
      ],
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
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  Image.asset(
                    'assets/icons/NurseCare-removebg-preview 1.png',
                    height: 200,
                    width: 180,
                  ),
                  const Center(
                    child: Text(
                      "Create account ",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: _firstNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your firstName';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'First Name',
                        filled: true,
                        fillColor: const Color(0xffFFFFFF).withOpacity(0.4)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _lastNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your lastName';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Last Name',
                        filled: true,
                        fillColor: const Color(0xffFFFFFF).withOpacity(0.4)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _userNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter username';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Username',
                        filled: true,
                        fillColor: const Color(0xffFFFFFF).withOpacity(0.4)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return '* Email is required';
                      } else if (!value.endsWith("@gmail.com")) {
                        return '* Email must be end with @gmail.com';
                      } else if (value.length < 13) {
                        return '* Email must be at least 13 digits';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'E-mail',
                        filled: true,
                        fillColor: const Color(0xffFFFFFF).withOpacity(0.4)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _nationalIdController,
                    // validator: (value) {
                    //   // if (value!.isEmpty) {
                    //   //   return '* National ID is required';
                    //   // } else if (value.length < 14) {
                    //   //   return '* National ID must be at least 14 digits';
                    //   // }
                    //   // return null;
                    // },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'National ID',
                        filled: true,
                        fillColor: const Color(0xffFFFFFF).withOpacity(0.4)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return '* National ID is required';
                      } else if (value.length < 7) {
                        return '* National ID must be at least 7 char';
                      }
                      return null;
                    },
                    obscureText: isVisible,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            isVisible = !isVisible;
                            setState(() {});
                          },
                          icon: Icon(isVisible
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                        hintText: 'Password',
                        filled: true,
                        fillColor: const Color(0xffFFFFFF).withOpacity(0.4)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _confirmPasswordController,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return '* Password is required';
                      } else if (value.length < 7) {
                        return '* Password must be at least 7 char';
                      } else if (value != _passwordController.text) {
                        return '* Password must be match';
                      }
                      return null;
                    },
                    obscureText: isVisible,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            isVisible = !isVisible;
                            setState(() {});
                          },
                          icon: Icon(
                            isVisible ? Icons.visibility_off : Icons.visibility,
                          ),
                        ),
                        hintText: 'Confirm Password',
                        filled: true,
                        fillColor: const Color(0xffFFFFFF).withOpacity(0.4)),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  BlocConsumer<RegisterCubit, RegisterState>(
                    listener: (context, state) {
                      if (state is RegisterSuccess) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Register Successfully"),
                            backgroundColor: Colors.green,
                          ),
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OtpView(),
                          ),
                        );
                      } else if (state is RegisterError) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(state.error),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    },
                    builder: (context, state) {
                      if (state is RegisterLoading) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (state is RegisterError) {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: Colors.red,
                          ),
                        );
                      } else {
                        return SizedBox(
                          width: 180,
                          height: 42,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    settings: RouteSettings(arguments: {
                                      'v1': _formKey,
                                      'v2': _confirmPasswordController.text,
                                      'v3': _emailController.text,
                                      'v4': _firstNameController.text,
                                      'v5': _lastNameController.text,
                                      'v6': _nationalIdController.text,
                                      'v7': _passwordController.text,
                                      'v8': _userNameController.text
                                    }),
                                    builder: (context) => const UploadIdPage(),
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
                              'Next',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        );
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have account?',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginView(),
                            ),
                          );
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

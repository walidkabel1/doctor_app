import 'package:flutter/material.dart';
import 'package:new_project_doctor/features/login/login_view.dart';
import 'package:new_project_doctor/features/register/register_view.dart';

class ChooseUser extends StatefulWidget {
  const ChooseUser({super.key});

  @override
  State<ChooseUser> createState() => _HomePageState();
}

class _HomePageState extends State<ChooseUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: const Icon(Icons.arrow_back_ios_new_outlined),
      // ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 45),
                Image.asset(
                  "assets/icons/NurseCare-removebg-preview 1.png",
                  height: 128,
                  width: 128,
                  fit: BoxFit.fill,
                ),
                // Spacer(),
                const SizedBox(height: 80),

                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      "assets/image/clip.jpeg",
                    ),
                    Column(
                      children: [
                        const Text(
                          "Create an account as",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 135,
                              width: 125,
                              decoration: BoxDecoration(
                                color: const Color(0xff83C5D3),
                                border: Border.all(
                                  color: const Color(0xff83C5D3),
                                  width: 3,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const CircleAvatar(
                                    radius: 40,
                                    backgroundImage: AssetImage(
                                      'assets/image/Ellipse 136.png',
                                    ),
                                  ),
                                  // SizedBox(height: 10),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const RegisterView(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "Nurse",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 100),
                            Container(
                              height: 150,
                              width: 125,
                              decoration: BoxDecoration(
                                color: const Color(0xff83C5D3),
                                border: Border.all(
                                  color: const Color(0xff83C5D3),
                                  width: 3,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const CircleAvatar(
                                    radius: 40,
                                    backgroundImage: AssetImage(
                                      'assets/image/Ellipse 144.png',
                                    ),
                                  ),
                                  // SizedBox(height: 1),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const RegisterView()),
                                      );
                                    },
                                    child: const Text(
                                      "Patient",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Already have an account ? ",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginView()),
                                );
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffA9D3EC),
      body: SafeArea(
        child: ListView(padding: const EdgeInsets.all(100),
            children: [
          Column(
              children: [
            const Center(
              child: Text("Welcome in NURSECARE",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            const SizedBox(height: 75),
            Image.asset(
              "assets/image/Ellipse 1.png",
              width: 800,
              height: 250,
            ),
            const SizedBox(height: 35),
            const Center(
              child: Text("We provide you with all home nursing services",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          ]),
        ]),
      ),
    );
  }
}

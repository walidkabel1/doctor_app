import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new_outlined),
        backgroundColor: const Color(0xffA9D3EC),
      ),
      backgroundColor: const Color(0xffA9D3EC),
      body: SafeArea(
        child: ListView(padding: const EdgeInsets.all(100), children: [
          Column(children: [
            const Center(
              child: Text("Determine the cost of the service",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            const SizedBox(height: 75),
            Image.asset("assets/image/Ellipse 3.png",
              width: 800,
              height: 250,
            ),
            const SizedBox(height: 35),
            const Center(
              child: Text(
                  "You can determine the value of the required service at the time of submitting the request and reject or accept requests submitted by nurses according to your budget.",
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

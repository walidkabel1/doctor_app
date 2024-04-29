import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new_outlined),
        backgroundColor:  const Color(0xffA9D3EC),
      ),
      backgroundColor: const Color(0xffA9D3EC),
      body: SafeArea(
        child: ListView(padding: const EdgeInsets.all(100), children: [
          Column(children: [
            const Center(
              child: Text("Schedule your service time",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            const SizedBox(height: 75),
            Image.asset("assets/image/Ellipse 1.png",
              width: 800,
              height: 250,
            ),
            const SizedBox(height: 35),
            const Center(
              child: Text("At Nurse Care, you can choose the service you need at the time you need it",
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

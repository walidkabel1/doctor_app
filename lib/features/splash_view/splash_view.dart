import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../onbording1/onboring1.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override

  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds:4),(){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Onbording1()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Stack(
          children: [
        Center(
        child: BounceInDown(
        child: Image.asset(
        "assets/icons/NurseCare-removebg-preview 1.png",
        height: 157,
        width:160,
        fit: BoxFit.fill,


    ),
    ),)
    ]


    ));
  }
}

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../choose_user/choose_view.dart';
import '../intro_screen/intro_page1.dart';
import '../intro_screen/intro_page2.dart';
import '../intro_screen/intro_page3.dart';


class Onbording1 extends StatefulWidget {
  const Onbording1({super.key});

  @override
  State<Onbording1> createState() => _Onbording1State();
}

class _Onbording1State extends State<Onbording1> {
  final PageController _controller= PageController();
  bool onLastPage =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children:[
          PageView(
            controller:_controller,
              onPageChanged:(index){
              setState((){
                onLastPage=(index==2);
              });
              },
              children:const [
                IntroPage1(),
                IntroPage2(),
                IntroPage3(),
              ]
          ),
          Container(
            alignment:const Alignment(0,0.75),
              child:Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children:[
                //  skip
                  GestureDetector(
                    onTap:(){
                      _controller.jumpToPage(2);
                    },
                    child:const Text("skip"),
                  ),



                  //do indector
                  SmoothPageIndicator(controller:_controller,count:3) ,
              //  next or done
                  onLastPage

                ?GestureDetector(
                  onTap:(){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const ChooseUser(),
                    )

                    );
                  },
                  child:const Text("done"),
                )
                  :GestureDetector(
                    onTap:(){
                      _controller.nextPage(
                        duration:const Duration(milliseconds:500),
                        curve:Curves.easeIn,
                      );
                    },
                    child:const Text("next"),
                  ),
                ],
              ),

              ),

        ]
      )
    );
  }
}

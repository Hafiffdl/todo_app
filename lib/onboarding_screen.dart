// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todo_app/screens/intro_screen/intro_screen1.dart';
import 'package:todo_app/screens/intro_screen/intro_screen2.dart';
import 'package:todo_app/screens/intro_screen/intro_screen3.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  // controller buat lacak sekarang di page berapa
  final PageController _controller = PageController();

  // lacak kita di page terakhir atau bukan
  bool onLastPage = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller, 
            onPageChanged: (index){
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),

          // dot indicators
          Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                // skip
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: const Text('Lewati'),
                ),
                

                SmoothPageIndicator(controller: _controller, count: 3),

                // next atau selesai
                onLastPage
                  ? GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context){
                              return Home();
                        },
                        ),
                        );
                      },
                      child: const Text('Selesai'),
                    )
                    : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 500), 
                          curve: Curves.easeIn);
                      },
                      child: const Text('Lanjut'),
                    ),
                

              ],
            ),
            
          )
          
        ],
      )
    );
  }
}

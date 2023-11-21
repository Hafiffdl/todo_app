import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget{
  const IntroPage3({super.key});

  // const IntroPage1({Key? : key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Image.asset('assets/images/intro3.png'),
            const Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 50,top: 20, right: 40),
                    child: Text(
                    'Mulai sekarang dan jadikan hidupmu lebih teratur dan efisien.',
                    style: TextStyle(fontSize: 26, fontFamily: 'Montserrat'),
                  ),
                  ),
                  ),
              ],
            ),
          ],
        ),
    ),
    );
  }
}
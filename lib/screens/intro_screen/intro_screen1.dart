import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget{
  const IntroPage1({super.key});

  // const IntroPage1({Key? : key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Image.asset('assets/images/intro1.png'),
            const Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 50,top: 20, right: 25),
                    child: Text(
                    'Selamat datang di aplikasi To-Do List kami!',
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
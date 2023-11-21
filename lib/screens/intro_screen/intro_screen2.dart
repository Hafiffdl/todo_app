import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget{
  const IntroPage2({super.key});

  // const IntroPage1({Key? : key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Image.asset('assets/images/intro2.png'),
            const Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 50,top: 20, right: 50),
                    child: Text(
                    'Atur dan kelola tugas-tugas harian dengan mudah.',
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
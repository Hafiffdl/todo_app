import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp ({Key? key}) : super(key:key);

  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      // ignore: prefer_const_constructors
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todo App',
        home: OnBoardingScreen(),
      ); 
  }
}
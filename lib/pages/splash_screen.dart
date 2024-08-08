import 'dart:async';
import 'package:flutter/material.dart';
import 'package:openbooks/pages/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MainScreen()));
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        color: Colors.blue,
        width: MediaQuery.of(context).size.width,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'FeedsBook.id', 
              style: TextStyle(
                fontSize: 25, 
                color: Colors.white, 
                fontWeight: FontWeight.bold),),
          ],
        ),
        
      )
    );
  }
}
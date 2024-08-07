import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2),(){
      Navigator.of(context).pushNamed('/home');
    });
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.yellow,
        alignment: Alignment.center,
        child: Container(
          height: 200,
          width: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/smile.jpeg'),
            )
          ),
        ),
      ),
    );
  }
}

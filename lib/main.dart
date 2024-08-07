import 'package:exam_advflutter/View/Screen/LikeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider/JokesProvider.dart';
import 'View/Screen/HomeScreen.dart';
import 'View/Screen/SplashScreen.dart';

void main()
{
  runApp(MyApp(),);
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create:(context) => JokesProvider(),builder:(context,child)=>
        MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context)=> SplashScreen(),
            '/home': (context)=> HomeScreen(),
            '/like': (context)=> LikeScreen(),
          },
        )
    );
  }
}

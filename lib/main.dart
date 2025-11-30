import 'package:flutter/material.dart';
import 'package:suit/views/splash.dart';

void main() {
  runApp(SutisApp());
}

class SutisApp extends StatelessWidget {
  const SutisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Inter',
      ),
      home: SplashView(),
    );
  }
}

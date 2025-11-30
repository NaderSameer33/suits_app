import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suit/views/splash.dart';

void main() {
  runApp(SutisApp());
}

class SutisApp extends StatelessWidget {
  const SutisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Inter',
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xffDD8560),
          ),
        ),
        home: SplashView(),
      ),
    );
  }
}

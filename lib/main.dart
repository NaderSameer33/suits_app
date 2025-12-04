import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suit/core/logic/helper_method.dart';
import 'package:suit/views/home/view.dart';

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
        navigatorKey: navKey,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          filledButtonTheme: FilledButtonThemeData(
            style: FilledButton.styleFrom(
              backgroundColor: Color(0xffDD8560),
              fixedSize: Size.fromHeight(56),
            ),
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              visualDensity: VisualDensity.compact,
              alignment: AlignmentDirectional.centerEnd,
              backgroundColor: Colors.transparent,
              foregroundColor: Color(0xffDD8560),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            isDense: true,
            filled: true,
            fillColor: Colors.white,
            border: _buildBorder(),
            focusedBorder: _buildBorder(),
            enabledBorder: _buildBorder(),
          ),
          scaffoldBackgroundColor: Color(0xffF4F5F7),
          fontFamily: 'Inter',
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xffDD8560),
          ),
        ),
        home: HomeView(),
      ),
    );

  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: BorderSide(
        color: Color(0xffE5E7EB),
        width: 1,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suit/core/ui/app_image.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDD8560),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 50.r,
              child: AppImage(
                image: 'splash_logo.svg',
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              'suits',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontFamily: 'Waterfall',
                fontSize: 128.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

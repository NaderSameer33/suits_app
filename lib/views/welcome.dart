import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suit/core/ui/app_image.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  AppImage(image: 'welcome_1.png'),
                  SizedBox(
                    width: 53.w,
                  ),
                  Column(
                    children: [
                      AppImage(image: 'welcome_2.png'),
                      SizedBox(
                        height: 23.h,
                      ),
                      AppImage(image: 'welcome_3.png'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 33.h),
              Text.rich(
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
                TextSpan(text: 'The', children: [

                  ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

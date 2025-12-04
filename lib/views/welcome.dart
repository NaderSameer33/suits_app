import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suit/core/logic/helper_method.dart';
import 'package:suit/core/ui/app_button.dart';
import 'package:suit/core/ui/app_image.dart';
import 'package:suit/views/auth/sign_in.dart';

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
              SizedBox(height: 33.h),
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
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
                TextSpan(
                  text: 'The\t',
                  children: [
                    TextSpan(
                      text: 'Suits App\t',
                      style: TextStyle(
                        color: Color(0xffDD8560),
                      ),
                    ),
                    TextSpan(
                      text: 'That\n  Makes Your Look Your Best',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              Text(
                textAlign: TextAlign.center,
                'Everything you need in the world\n of fashion, old and new',
                style: TextStyle(
                  color: Color(0xff727272),
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 60.h),
              AppButton(
                title: 'Get started',
                onPressed: () => goTo(page: SignInView()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

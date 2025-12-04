import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suit/core/logic/helper_method.dart';
import 'package:suit/core/ui/app_image.dart';
import 'package:suit/views/on_borading/view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    goTo(
      page: OnBoradingView(),
      delaySeconds: 3,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDD8560),
      body: Dance(
        duration: Duration(seconds: 3),
        child: Center(
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
      ),
    );
  }
}

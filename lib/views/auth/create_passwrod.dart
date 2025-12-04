import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suit/core/ui/app_bar.dart';
import 'package:suit/core/ui/app_button.dart';
import 'package:suit/core/ui/app_image.dart';
import 'package:suit/core/ui/app_input.dart';

class CreatePasswrodView extends StatelessWidget {
  const CreatePasswrodView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Create New Password',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Create your new password to login',
                style: TextStyle(
                  color: Color(0xffA1A8B0),
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              AppInput(
                hintText: 'Enter Your Password',
                prefixIcon: 'password.png',
                isPadsswrod: true,
                bottomSpacing: 16.h,
              ),
              AppInput(
                hintText: 'Enter Your Password',
                prefixIcon: 'password.png',
                isPadsswrod: true,
                bottomSpacing: 16.h,
              ),
              AppButton(
                title: 'Create Password',
                onPressed: () => showDialog(
                  context: context,
                  builder: (context) => SuccessDialog(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 16.r),
      backgroundColor: Colors.white,
      children: [
        CircleAvatar(
          backgroundColor: Color(0xffF5F8FF),
          radius: 50,
          child: AppImage(
            image: 'check.svg',
          ),
        ),
        SizedBox(
          height: 26.h,
        ),
        Text(
          textAlign: TextAlign.center,
          'Success',
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 7.h,
        ),
        Text(
          textAlign: TextAlign.center,
          'Your account has been successfully\n registered',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xffA1A8B0),
          ),
        ),
        SizedBox(
          height: 21.h,
        ),
        AppButton(title: '')
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suit/core/logic/helper_method.dart';
import 'package:suit/core/ui/app_bar.dart';
import 'package:suit/core/ui/app_button.dart';
import 'package:suit/core/ui/app_input.dart';
import 'package:suit/core/ui/app_signin_or_singup.dart';
import 'package:suit/core/ui/app_social_button.dart';
import 'package:suit/views/auth/forget_password.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Login',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 17.h),
            Text(
              textAlign: TextAlign.center,
              'Hi Welcome back, you’ve been missed',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 40.h),
            AppInput(
              prefixIcon: 'email.png',
              hintText: 'Enter your email',

              bottomSpacing: 16.h,
            ),
            AppInput(
              prefixIcon: 'password.png',
              hintText: 'Enter your password',
              isPadsswrod: true,
            ),
            TextButton(
              onPressed: () => goTo(page: ForgetPasswordView()),
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 22.h),
            AppButton(
              title: 'Login',
              onPressed: () {},
            ),
            SizedBox(height: 10.h),
            AppLoginOrSingup(isLogin: true),
            SizedBox(height: 20.h),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Divider(
                  color: Color(0xffE5E7EB),
                  thickness: 1,
                ),
                Text(
                  'OR',
                  style: TextStyle(
                    color: Color(0xffA1A8B0),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            AppSocialButton(),
          ],
        ),
      ),
    );
  }
}

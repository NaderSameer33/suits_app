import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suit/core/ui/app_bar.dart';
import 'package:suit/core/ui/app_button.dart';
import 'package:suit/core/ui/app_input.dart';
import 'package:suit/core/ui/app_signin_or_singup.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Sign Up'),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 32.h,
              ),
              AppInput(
                prefixIcon: 'info.png',
                hintText: 'Enter your name ',
                bottomSpacing: 16.h,
              ),
              AppInput(
                prefixIcon: 'email.png',
                hintText: 'Enter your email ',
                bottomSpacing: 16.h,
              ),
              AppInput(
                prefixIcon: 'password.png',
                hintText: 'Enter your password ',
                isPadsswrod: true,
                bottomSpacing: 16.h,
              ),
              _TermCondation(),
              SizedBox(
                height: 30.h,
              ),
              AppButton(
                title: 'Sign UP',
                onPressed: () {},
              ),
              SizedBox(
                height: 40.h,
              ),
              AppLoginOrSingup(),
            ],
          ),
        ),
      ),
    );
  }
}

class _TermCondation extends StatefulWidget {
  const _TermCondation();

  @override
  State<_TermCondation> createState() => _TermCondationState();
}

class _TermCondationState extends State<_TermCondation> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.5,

          child: Checkbox(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.r),
            ),
            side: BorderSide(
              color: Color(0xffD9D9D9),
            ),
            activeColor: Color(0xffDD8560),
            checkColor: Colors.white,
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
        ),

        Text.rich(
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
          ),
          TextSpan(
            text: 'I agree to the medidoc ',
            children: [
              TextSpan(
                text: 'Terms of Service\n',
                style: TextStyle(
                  color: Color(0xffDD8560),
                ),
              ),
              TextSpan(
                text: 'and',
              ),
              TextSpan(
                text: ' Privacy Policy',
                style: TextStyle(
                  color: Color(0xffDD8560),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

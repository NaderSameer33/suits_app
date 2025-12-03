import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suit/core/ui/app_bar.dart';
import 'package:suit/core/ui/app_button.dart';
import 'package:suit/core/ui/app_input.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

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
                'Forgot Your Password?',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 11.h,
              ),
              Text(
                'Enter your email or your phone number, we \nwill send you confirmation code',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Color(
                    0xffA1A8B0,
                  ),
                ),
              ),
              SizedBox(
                height: 31.h,
              ),
              SizedBox(
                height: 150.h,
                child: _TapItem(),
              ),
              AppButton(
                title: 'Reset Password',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TapItem extends StatefulWidget {
  const _TapItem();

  @override
  State<_TapItem> createState() => _TapItemState();
}

class _TapItemState extends State<_TapItem> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      animationDuration: Duration(seconds: 1),
      length: 2,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(6),
            height: 56.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24.r),
            ),
            child: TabBar(
              indicatorColor: Colors.transparent,
              labelStyle: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xffDD8560),
              ),
              dividerHeight: 0,

              unselectedLabelStyle: TextStyle(
                color: Color(0xffA1A8B0),
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
              tabs: [
                Tab(
                  text: 'Email',
                ),
                Tab(
                  text: 'Phone',
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          Expanded(
            child: TabBarView(
              children: [
                AppInput(
                  hintText: 'Enter your email',
                  prefixIcon: 'email.png',
                ),
                AppInput(
                  hintText: 'Enter your phone',
                  prefixIcon: 'phone.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

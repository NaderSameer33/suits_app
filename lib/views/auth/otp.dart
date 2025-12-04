import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:suit/core/ui/app_bar.dart';
import 'package:suit/core/ui/app_button.dart';
import 'package:suit/core/ui/app_fild.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

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
                'Enter Verification Code',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text.rich(
                TextSpan(
                  text: 'Enter code that we have sent to your\nnumber',
                  style: TextStyle(
                    color: Color(0xffA1A8B0),
                  ),
                  children: [
                    TextSpan(
                      text: '\t08528188***',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 33.h,
              ),
              AppPinFild(),
              SizedBox(
                height: 31.h,
              ),
              AppButton(
                title: 'Verify',
                onPressed: () {},
              ),
              SizedBox(
                height: 24.h,
              ),
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  text: 'Didn’t receive the code?\t',
                  children: [
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: IconButton(
                        onPressed: () {},
                        icon: Text(
                          'Resend',
                          style: TextStyle(color: Color(0xffDD8560)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppLoginOrSingup extends StatelessWidget {
  const AppLoginOrSingup({super.key, this.isLogin = false});
  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,

      TextSpan(
        text: isLogin ? 'Don’t have an account?' : 'Already Have Account?',
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: Color(0xff717784),
        ),
        children: [
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: TextButton(
              onPressed: () {},
              child: Text(isLogin ? 'Sign Up' : 'Login'),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suit/core/logic/helper_method.dart';
import 'package:suit/views/auth/sign_up.dart';

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
              onPressed: () {
                if (isLogin) {
                  goTo(
                    page: SignUpView(),
                  );
                } else {
                  Navigator.pop(context);
                }
              },
              child: Text(isLogin ? 'Sign Up' : 'Login'),
            ),
          ),
        ],
      ),
    );
  }
}

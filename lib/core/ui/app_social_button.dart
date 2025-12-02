import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suit/core/ui/app_image.dart';

class AppSocialButton extends StatefulWidget {
  const AppSocialButton({super.key});

  @override
  State<AppSocialButton> createState() => _AppSocialButtonState();
}

class _AppSocialButtonState extends State<AppSocialButton> {
  final _list = [
    _Model(image: 'google.svg', onPressed: () {}, title: 'Sign in with google'),
    _Model(image: 'apple.svg', onPressed: () {}, title: 'Sign in with Apple'),
    _Model(
      image: 'facebook.svg',
      onPressed: () {},
      title: 'Sign in with Facebook',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          _list.length,
          (index) {
            final model = _list[index];
            return Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  fixedSize: Size.fromHeight(56.h),
                ),
                onPressed: model.onPressed,
                child: Row(
                  children: [
                    AppImage(image: model.image),
                    Spacer(),
                    Text(
                      model.title,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class _Model {
  final String image, title;
  final VoidCallback onPressed;
  _Model({required this.image, required this.onPressed, required this.title});
}

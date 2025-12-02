import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suit/core/ui/app_image.dart';

class AppInput extends StatefulWidget {
  const AppInput({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.isPadsswrod = false,
    this.bottomSpacing = 0,
  });
  final String hintText;
  final String? suffixIcon, prefixIcon;
  final bool isPadsswrod;
  final double bottomSpacing;

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool isHidden = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: widget.bottomSpacing),
      child: TextFormField(
        obscureText: isHidden && widget.isPadsswrod,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
        ),
        cursorColor: Color(0xffA1A8B0),
        decoration: InputDecoration(
          hintText: widget.hintText,
          suffixIcon: widget.isPadsswrod
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isHidden = !isHidden;
                    });
                  },
                  icon: AppImage(
                    image: isHidden ? 'hide.png' : 'visibility.svg',
                  ),
                )
              : widget.suffixIcon != null
              ? AppImage(
                  image: widget.suffixIcon!,
                )
              : null,
          prefixIcon: widget.prefixIcon != null
              ? AppImage(
                  image: widget.prefixIcon!,
                )
              : null,
          hintStyle: TextStyle(
            color: Color(0xffA1A8B0),
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

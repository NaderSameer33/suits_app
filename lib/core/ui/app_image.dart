import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppImage extends StatelessWidget {
  const AppImage({
    super.key,
    required this.image,
    this.height,
    this.width,
    this.fit = BoxFit.scaleDown,
    this.color,
  });
  final String image;
  final double? height, width;
  final BoxFit fit;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (image.isEmpty) {
      return SizedBox.shrink();
    }
    if (image.toLowerCase().endsWith('svg')) {
      child = SvgPicture.asset(
        'assets/icons/$image',
        height: height,
        width: width,
        fit: fit,
        color: color,
      );
    } else if (image.startsWith('http')) {
      child = Image.network(
        image,
        height: height,
        width: width,
        fit: fit,
        color: color,
      );
    } else {
      child = Image.asset(
        'assets/images/$image',
        fit: fit,
        height: height,
        width: width,
        color: color,
      );
    }
    return child;
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suit/core/logic/helper_method.dart';
import 'package:suit/core/ui/app_image.dart';
import 'dart:math';

import 'package:suit/views/auth/views/login.dart';
import 'package:suit/views/welcome.dart';
part 'widgets/item.dart';

class OnBoradingView extends StatefulWidget {
  const OnBoradingView({super.key});

  @override
  State<OnBoradingView> createState() => _OnBoradingViewState();
}

class _OnBoradingViewState extends State<OnBoradingView> {
  final _list = [
    _Model(
      image: 'on_borading_1.jpg',
      subTitle:
          'Discover the latest trends and exclusive styles from our top designers',
      title: 'Welcome To Fashion',
    ),
    _Model(
      image: 'on_borading_2.jpg',
      subTitle:
          'Discover a wide range of fashion categories, browse new arrivals and shop your favourites',
      title: 'Explore & Shop',
    ),
    _Model(
      image: 'on_borading_3.jpg',
      title: 'Hi,Shop Now',
    ),
  ];
  int _currentIndex = 0;
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        physics: ClampingScrollPhysics(),
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        itemCount: _list.length,
        itemBuilder: (context, index) => _Item(
          list: _list,
          controller: _controller,
          currentIndex: _currentIndex,
          model: _list[index],
        ),
      ),
    );
  }
}

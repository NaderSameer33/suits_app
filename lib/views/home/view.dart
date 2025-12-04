import 'package:flutter/material.dart';
import 'package:suit/core/ui/app_image.dart';
import 'package:suit/views/home/pages/cart.dart';
import 'package:suit/views/home/pages/favourite.dart';
import 'package:suit/views/home/pages/home.dart';
import 'package:suit/views/home/pages/profile.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;
  final _list = [
    _Modle(image: 'home.svg', page: HomePage()),
    _Modle(image: 'cart.svg', page: CartPage()),
    _Modle(image: 'favourite.svg', page: FavouritePage()),
    _Modle(image: 'profile.svg', page: ProfilePage()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _list[_currentIndex].page,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        items: List.generate(
          _list.length,
          (index) => BottomNavigationBarItem(
            backgroundColor: Color(0xffF9F9F9),

            icon: AppImage(
              image: _list[index].image,
              color: _currentIndex == index ? Color(0xffDD8560) : null,
            ),
            label: '',
          ),
        ),
      ),
    );
  }
}

class _Modle {
  final String image;
  final Widget page;
  _Modle({required this.image, required this.page});
}

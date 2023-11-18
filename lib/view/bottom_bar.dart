import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';
import 'package:untitled/view/brands.dart';
import 'package:untitled/view/home.dart';
import 'package:untitled/view/profile.dart';

import 'cart.dart';
import 'favorite.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          Home(),
          // Brands(),
          Favorite(),
          Cart(),
          Profile(),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: RollingBottomBar(
        controller: _controller,
        items: const [
          RollingBottomBarItem(Icons.home_filled, label: 'Home'),
          // RollingBottomBarItem(Icons.home_filled, label: 'Brands'),
          RollingBottomBarItem(Icons.favorite, label: 'Favorite'),
          RollingBottomBarItem(Icons.add_shopping_cart_outlined, label: 'cart'),
          RollingBottomBarItem(Icons.settings, label: 'Profile'),
        ],
        activeItemColor: Color(0xff457B9D),
        onTap: (index) {
          _controller.animateToPage(
            index,
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeOut,
          );
        },
      ),
    );
  }
}

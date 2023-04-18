import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
            _currentIndex == 0
                ? "assets/icons/home-fill.svg"
                : "assets/icons/home.svg",
            width: 24,
            height: 24,
          )),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
            _currentIndex == 1
                ? "assets/icons/search-fill.svg"
                : "assets/icons/search.svg",
            width: 24,
            height: 24,
          )),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
            "assets/icons/new-post.svg",
            width: 24,
            height: 24,
          )),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
            _currentIndex == 3
                ? "assets/icons/reels-fill.svg"
                : "assets/icons/reels.svg",
            width: 24,
            height: 24,
          )),
          BottomNavigationBarItem(
            icon: Container(
              width: 24,
              height: 24,
              decoration: ShapeDecoration(
                shape: const StadiumBorder(
                  side: BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                color: Colors.black.withAlpha(32),
              ),
              child: SvgPicture.asset(
                "assets/icons/profile-fill.svg",
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ],
      ),
      tabBuilder: (context, index) => Text(index.toString()),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getirclone/constants/colors.dart';
import 'package:getirclone/main.dart';
import 'package:getirclone/view/home/viewHome.dart';
import 'package:getirclone/view/search/viewSearch.dart';
import 'package:getirclone/view/user/viewUser.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int _pageIndex = 0;
  Widget getPages() {
    switch (_pageIndex) {
      case 0:
        return const Home();
      case 1:
        return const Search();
      case 2:
        return const Home();
      case 3:
        return const User();
      case 4:
        return const Home();
      default:
        return const Home();
    }
  }

  void onItemTapped(int value) {
    setState(() {
      _pageIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getPages(),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _bottomNavBarItem(Icons.home, 0),
            _bottomNavBarItem(Icons.search, 1),
            _bottomNavBarItemMain(),
            _bottomNavBarItem(Icons.person, 3),
            _bottomNavBarItem(Icons.redeem, 4),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavBarItem(IconData iconData, int page) {
    return GestureDetector(
      onTap: () => onItemTapped(page),
      child: Container(
        decoration: const BoxDecoration(),
        child: Icon(iconData, size: 26, color: page == _pageIndex ? MyColor.primaryColor : Colors.grey),
      ),
    );
  }

  Widget _bottomNavBarItemMain() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(shape: BoxShape.circle, color: MyColor.primaryColor),
      child: Image.asset('assets/images/ic_fab.png'),
    );
  }
}

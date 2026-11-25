import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lagto_mobprog/constant.dart';
import 'package:lagto_mobprog/screens/newsfeed_screen.dart';
import 'package:lagto_mobprog/screens/notification_screen.dart';
import 'package:lagto_mobprog/screens/profile_screen.dart';
import 'package:lagto_mobprog/widget/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  static const _titles = ['PulseBoard', 'Notifications', 'Profile'];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appPrimaryDark,
        shadowColor: appPrimaryDark,
        elevation: 2,
        title: CustomText(
          text: _titles[_selectedIndex],
          fontSize: ScreenUtil().setSp(25),
          color: appTextPrimary,
          fontFamily: 'Klavika',
          fontWeight: FontWeight(700),
        ), // CustomText
      ), // AppBar
      body: PageView(
        controller: _pageController,
        children: const <Widget>[
          NewsfeedScreen(),
          NotificationScreen(),
          ProfileScreen(),
        ],
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
      ), // PageView
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: appSurface,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: _onTappedBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ), // BottomNavigationBarItem
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: appAccent,
        unselectedItemColor: appTextPrimary,
        currentIndex: _selectedIndex,
      ), // BottomNavigationBar
    ); // Scaffold
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }
}

// ignore_for_file: unused_field, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peer_vendors_ecommerce_ui/routes/routes.dart';

import '../../constant/colors.dart';
import '../../constant/strings.dart';
import 'account_page.dart';
import 'chat_page.dart';
import 'home_page.dart';
import 'my_adds_page.dart';

class NavigationbarPage extends StatefulWidget {
  const NavigationbarPage({Key? key}) : super(key: key);

  @override
  State<NavigationbarPage> createState() => _NavigationbarPageState();
}

class _NavigationbarPageState extends State<NavigationbarPage> {
  final _pages = [HomePages(), MyAddsPages(), ChatPage(), AccountPage()];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: BackgroundColor.bg_color,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(mySellScreenOne),
        child: Container(
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(180),
            border: Border.all(
              color: Color(0xFFC4C4C4),
              width: 2.w,
            ),
          ),
          child: Center(
            child: Icon(
              Icons.add,
              color: Color(0xFFC4C4C4),
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(
            () {
              _currentIndex = index;
            },
          );
        },
        selectedItemColor: const Color(0xFF5364F4),
        unselectedItemColor: const Color(0xFFC4C4C4),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: "My Adds"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}

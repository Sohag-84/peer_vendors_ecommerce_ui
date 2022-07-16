// ignore_for_file: unused_field, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peer_vendors_ecommerce_ui/constant/colors.dart';
import 'package:peer_vendors_ecommerce_ui/constant/strings.dart';
import 'package:peer_vendors_ecommerce_ui/routes/routes.dart';
import 'package:peer_vendors_ecommerce_ui/views/pages/account_page.dart';
import 'package:peer_vendors_ecommerce_ui/views/pages/chat_page.dart';
import 'package:peer_vendors_ecommerce_ui/views/pages/home_page.dart';
import 'package:peer_vendors_ecommerce_ui/views/pages/my_adds_page.dart';

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
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: BackgroundColor.bg_color,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Text(""),
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
      body: Stack(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: 160.w,
            bottom: -12,
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) {
                    return Center(
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 328.h,
                            width: 368.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  Text(
                                    DialogText.title,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 24.sp,
                                      color: Color(0xFF3A3030),
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  SizedBox(height: 30.h),
                                  dialogText(
                                      title: DialogText.text_1,
                                      image: 'images/video.png'),
                                  SizedBox(height: 20.h),
                                  dialogText(
                                      title: DialogText.text_2,
                                      image: 'images/video.png'),
                                  SizedBox(height: 20.h),
                                  dialogText(
                                      title: DialogText.text_3,
                                      image: 'images/customer.png'),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            right: -15,
                            top: -15,
                            child: Material(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(180),
                              ),
                              child: InkWell(
                                onTap: () => Get.back(),
                                child: SizedBox(
                                  height: 65.h,
                                  width: 65.w,
                                  child: Card(
                                    color: Colors.white,
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(180),
                                    ),
                                    child: Icon(Icons.close_outlined),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              },
              child: Padding(
                padding: EdgeInsets.only(right: 18.w),
                child: SizedBox(
                  height: 70.h,
                  width: 70.w,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(180.r)),
                    child: Icon(
                      Icons.headphones,
                      color: Color(0xFFFF7465),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 37.h,
          ),
          _pages[_currentIndex],
        ],
      ),
    );
  }

  Row dialogText({required String title, required String image}) {
    return Row(
      children: [
        Image.asset(
          image,
          height: 25.h,
          width: 25.w,
        ),
        SizedBox(
          width: 15.w,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xFFFF7465),
            decoration: TextDecoration.none,
          ),
        )
      ],
    );
  }
}

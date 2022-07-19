// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyHeaderDrawer extends StatelessWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 300.h,
          color: Colors.white,
          padding: EdgeInsets.only(top: 20.h),
          child: Container(
            color: Color.fromARGB(255, 172, 234, 236),
            child: Column(
              children: [
                SizedBox(height: 80),
                ClipRRect(
                  borderRadius: BorderRadius.circular(180),
                  child: Image.network(
                    'http://surl.li/clxic',
                    height: 100.h,
                    width: 100.w,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 15.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Injamul Haq Sohag",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.orange,
                      ),
                    ),
                    Text(
                      "ihsohag84@gmail.com",
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 20.h),
        Padding(
          padding: EdgeInsets.only(left: 18.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customDrawerList(text: "Account Metrics"),
              SizedBox(height: 20.h),
              customDrawerList(text: "Help & Support"),
              SizedBox(height: 20.h),
              customDrawerList(text: "Contact Us"),
              SizedBox(height: 20.h),
              customDrawerList(text: "Share App"),
              SizedBox(height: 20.h),
              customDrawerList(text: "Rate Us"),
              SizedBox(height: 20.h),
              customDrawerList(text: "FAQ"),
              SizedBox(height: 20.h),
              customDrawerList(text: "Privacy Policy"),
            ],
          ),
        ),
      ],
    );
  }

  Column customDrawerList({required String text}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 30.h,
              width: 30.w,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(180),
              ),
            ),
            SizedBox(width: 15.w),
            Text(
              text,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w300,
                color: Color(0xFF3A3030),
              ),
            ),
          ],
        ),
        SizedBox(height: 5.h),
        Container(
          width: 250.h,
          height: 1.h,
          color: Color(0xFFC4C4C4),
        ),
      ],
    );
  }
}

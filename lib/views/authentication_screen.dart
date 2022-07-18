// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import '../constant/strings.dart';
import '../routes/routes.dart';
import '../widget/custom_button.dart';
import '../widget/custom_icon_button.dart';

class AuthenticationScreen extends StatelessWidget {
  AuthenticationScreen({Key? key}) : super(key: key);

  final List color = [Colors.blue, Colors.red];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.bg_color,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 115.h,
                ),
                Image.asset('images/splash.png', height: 99.h, width: 99.w),
                SizedBox(
                  height: 26.h,
                ),
                Text(
                  AuthenticationText.title,
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 36.sp),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  AuthenticationText.description,
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
                ),
                Text(
                  AuthenticationText.privacy,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    color: Color(0xFF00A3FF),
                  ),
                ),
                SizedBox(
                  height: 88.h,
                ),
                CustomButton(
                  text: AuthenticationText.registerButton,
                  onTap: () {
                    Get.toNamed(registrationScreen);
                  },
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomButton(
                  text: AuthenticationText.loginButton,
                  onTap: () {
                    Get.toNamed(loginScreen);
                  },
                ),
                SizedBox(
                  height: 24.h,
                ),
                Center(
                  child: Text(
                    AuthenticationText.continueWith,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF3A3030),
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      image: 'images/google.png',
                      onPressed: null,
                    ),
                    SizedBox(
                      width: 31.w,
                    ),
                    CustomIconButton(
                      image: 'images/facebook.png',
                      onPressed: null,
                    ),
                    SizedBox(
                      width: 31.w,
                    ),
                    CustomIconButton(
                      image: 'images/twitter.png',
                      onPressed: null,
                    ),
                  ],
                ),
                SizedBox(height: 52.h),
                Row(
                  children: [
                    Image.asset(
                      'images/video.png',
                      height: 25.h,
                      width: 25.w,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: 9.w,
                    ),
                    Text(
                      AuthenticationText.needHelp,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFFF7465),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

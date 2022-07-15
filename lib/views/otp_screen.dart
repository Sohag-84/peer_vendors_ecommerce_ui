// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peer_vendors_ecommerce_ui/constant/colors.dart';
import 'package:peer_vendors_ecommerce_ui/routes/routes.dart';
import 'package:peer_vendors_ecommerce_ui/widget/custom_button.dart';

import '../widget/custom_text_field.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.bg_color,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.w, horizontal: 30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'images/splash.png',
                height: 149.h,
                width: 149.w,
              ),
              SizedBox(
                height: 88.h,
              ),
              CustomTextField(titleText: "Enter your 6 digit OTP code"),
              SizedBox(
                height: 54.h,
              ),
              CustomButton(
                text: "Continue",
                onTap: () {
                  Get.toNamed(successScreen);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

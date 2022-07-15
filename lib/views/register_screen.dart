// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peer_vendors_ecommerce_ui/constant/colors.dart';
import 'package:peer_vendors_ecommerce_ui/constant/strings.dart';
import 'package:peer_vendors_ecommerce_ui/routes/routes.dart';
import 'package:peer_vendors_ecommerce_ui/widget/custom_button.dart';
import 'package:peer_vendors_ecommerce_ui/widget/custom_icon_button.dart';

import '../widget/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.bg_color,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 32.w, top: 25.h, right: 32.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomIconButton(
                  image: 'images/arrow.png',
                  onPressed: () => Get.back(),
                ),
                SizedBox(height: 25),
                Text(
                  RegisterText.title,
                  style:
                      TextStyle(fontSize: 36.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Center(
                  child: Container(
                    height: 39.h,
                    width: 186,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xFFC4C4C4),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 110.w,
                          height: 39.h,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: Text(RegisterText.phone)),
                        ),
                        Container(
                          width: 110.w,
                          height: 39.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(RegisterText.email),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                CustomTextField(
                  titleText: RegisterText.fullName,
                ),
                SizedBox(
                  height: 18.h,
                ),
                CustomTextField(
                  titleText: RegisterText.phoneNumber,
                ),
                SizedBox(
                  height: 18.h,
                ),
                CustomTextField(
                  titleText: RegisterText.country,
                ),
                SizedBox(height: 34.h),
                CustomButton(
                  text: RegisterText.buttonText,
                  onTap: () {
                    Get.toNamed(otpScreen);
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Text(
                      "Already Have an Account?",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(loginScreen);
                      },
                      child: Text(
                        " Login",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

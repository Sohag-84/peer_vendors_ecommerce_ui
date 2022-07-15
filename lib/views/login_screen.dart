// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peer_vendors_ecommerce_ui/constant/colors.dart';

import '../constant/strings.dart';
import '../routes/routes.dart';
import '../widget/custom_button.dart';
import '../widget/custom_icon_button.dart';
import '../widget/custom_select_option_button.dart';
import '../widget/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                  LoginText.title,
                  style:
                      TextStyle(fontSize: 36.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 40.h,
                ),
                CustomSelectOptionButton(),
                SizedBox(
                  height: 40.h,
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
                SizedBox(height: 40.h),
                CustomButton(
                  text: RegisterText.buttonText,
                  onTap: () {
                    Get.toNamed(otpScreen);
                  },
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: [
                    Text(
                      "Don’t Have an Account?",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(registrationScreen);
                      },
                      child: Text(
                        " Register",
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

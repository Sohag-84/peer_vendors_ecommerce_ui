// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final onTap;
  const CustomButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60.h,
        width: 356.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          gradient: LinearGradient(colors: ButtonColor.buttonColor),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 26.w),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              text,
              style: TextStyle(
                color: ButtonColor.buttonTextColor,
                fontWeight: FontWeight.w400,
                fontSize: 20.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

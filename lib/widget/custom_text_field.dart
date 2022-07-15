// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/colors.dart';

class CustomTextField extends StatelessWidget {
  final String titleText;
  const CustomTextField({Key? key, required this.titleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titleText,
            style: TextStyle(
              color: RegistrationColor.textColor,
              fontWeight: FontWeight.w300,
              fontSize: 18.sp,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(),
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/strings.dart';

class CustomSelectOptionButton extends StatelessWidget {
  const CustomSelectOptionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}

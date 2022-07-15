import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/colors.dart';

class CustomIconButton extends StatelessWidget {
  final image;
  final onPressed;
  const CustomIconButton(
      {Key? key, required this.image, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 45.h,
        width: 45.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(180),
          color: AuthenticationColor.iconBgColor,
        ),
        child: Center(
          child: Image.asset(
            image,
            height: 25.h,
            width: 25,
          ),
        ),
      ),
    );
  }
}

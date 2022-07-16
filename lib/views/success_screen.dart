import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peer_vendors_ecommerce_ui/constant/colors.dart';
import 'package:peer_vendors_ecommerce_ui/routes/routes.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.bg_color,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => Get.offAllNamed(bottomNavigationPage),
              child: Image.asset(
                'images/check.png',
                height: 118.h,
                width: 118.w,
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Text(
              "Well-Done!",
              style: TextStyle(
                fontSize: 40.sp,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}

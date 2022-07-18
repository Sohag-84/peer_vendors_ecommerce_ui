// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peer_vendors_ecommerce_ui/constant/colors.dart';
import 'package:peer_vendors_ecommerce_ui/constant/strings.dart';
import 'package:peer_vendors_ecommerce_ui/routes/routes.dart';
import 'package:peer_vendors_ecommerce_ui/widget/custom_button.dart';
import 'package:peer_vendors_ecommerce_ui/widget/custom_title_subtitle.dart';

class SellScreenFour extends StatelessWidget {
  const SellScreenFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.bg_color,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            customTitleSubtitle(
              title: "Choose Images",
              subtitle: "Add 1 or more images",
            ),
            SizedBox(height: 17.h),
            Padding(
              padding: EdgeInsets.only(left: 18.w, right: 18.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ScreenFourText.description,
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 35.h),
                  Container(
                    height: 75.h,
                    width: 75.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Center(
                      child: Container(
                        height: 30.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(180),
                          border: Border.all(
                            color: Color(0xFFFF7465),
                            width: 2.w,
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Color(0xFFFF7465),
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    shrinkWrap: true,
                    children: List.generate(
                      6,
                      (index) {
                        return Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/mobile.png'),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 30.h),
                  CustomButton(
                    text: "Continue",
                    onTap: () => Get.toNamed(successScreen),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

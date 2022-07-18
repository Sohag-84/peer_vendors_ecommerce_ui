// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/colors.dart';
import '../widget/custom_button.dart';
import '../widget/custom_title_subtitle.dart';

class SellScreenThree extends StatelessWidget {
  const SellScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.bg_color,
      body: SafeArea(
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            customTitleSubtitle(
              title: "Product Details",
              subtitle: "Complete All the fields with valid\ninformation",
            ),
            SizedBox(height: 26.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: Column(
                children: [
                  textField(hintText: "Product Title"),
                  SizedBox(height: 6.h),
                  TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: "Product description",
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  textField(hintText: "Price"),
                  SizedBox(height: 6.h),
                  textField(hintText: "Where you advertise this item ?"),
                  SizedBox(height: 6.h),
                  textField(hintText: "Location"),
                  SizedBox(height: 30.h),
                  CustomButton(
                    text: "Continue",
                    onTap: () => Text("data"),
                  ),
                  SizedBox(height: 30.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextField textField({required String hintText}) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}

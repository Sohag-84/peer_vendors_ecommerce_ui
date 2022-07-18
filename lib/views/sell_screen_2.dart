// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peer_vendors_ecommerce_ui/widget/custom_radio_button.dart';
import 'package:peer_vendors_ecommerce_ui/widget/custom_title_subtitle.dart';

import '../constant/colors.dart';
import '../routes/routes.dart';

class SellScreenTwo extends StatefulWidget {
  SellScreenTwo({Key? key}) : super(key: key);

  @override
  State<SellScreenTwo> createState() => _SellScreenTwoState();
}

class _SellScreenTwoState extends State<SellScreenTwo> {
  String? subCategory;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.bg_color,
      body: SafeArea(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            customTitleSubtitle(
              title: "Sell",
              subtitle: "Choose a Sub Category",
            ),
            SizedBox(
              height: 14.h,
            ),
            CustomRadioButton(
              groupValue: subCategory,
              text: "Cars",
              value: 'car',
              onChanged: (value) {
                setState(
                  () {
                    subCategory = value.toString();
                  },
                );
              },
            ),
            CustomRadioButton(
              groupValue: subCategory,
              text: "Bikes",
              value: 'bike',
              onChanged: (value) {
                setState(
                  () {
                    subCategory = value.toString();
                  },
                );
              },
            ),
            CustomRadioButton(
              groupValue: subCategory,
              text: "Bicycles",
              value: 'cycles',
              onChanged: (value) {
                setState(
                  () {
                    subCategory = value.toString();
                    Get.toNamed(sellScreenThree);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

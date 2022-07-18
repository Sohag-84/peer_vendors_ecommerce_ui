// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peer_vendors_ecommerce_ui/constant/colors.dart';
import 'package:peer_vendors_ecommerce_ui/routes/routes.dart';

import '../widget/custom_radio_button.dart';
import '../widget/custom_title_subtitle.dart';

class MySellScreenOne extends StatefulWidget {
  const MySellScreenOne({Key? key}) : super(key: key);

  @override
  State<MySellScreenOne> createState() => _MySellScreenOneState();
}

class _MySellScreenOneState extends State<MySellScreenOne> {
  String? category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.bg_color,
      body: SafeArea(
        child: Column(
          children: [
            customTitleSubtitle(
              title: "Sell",
              subtitle: "Choose a Category",
            ),
            SizedBox(
              height: 14.h,
            ),
            CustomRadioButton(
              groupValue: category,
              text: "Cars, Bikes, Bicycles",
              value: "first",
              onChanged: (value) {
                setState(
                  () {
                    category = value.toString();
                  },
                );
              },
            ),
            CustomRadioButton(
              groupValue: category,
              value: "second",
              text: "Laptops, Tablets, Computers",
              onChanged: (value) {
                setState(
                  () {
                    category = value.toString();
                    Get.toNamed(sellScreenTwo);
                  },
                );
              },
            ),
            CustomRadioButton(
              groupValue: category,
              value: "third",
              text: "Cars, Bikes, Bicycles",
              onChanged: (value) {
                setState(
                  () {
                    category = value.toString();
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

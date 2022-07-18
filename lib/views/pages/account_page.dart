// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peer_vendors_ecommerce_ui/constant/colors.dart';
import 'package:peer_vendors_ecommerce_ui/widget/custom_radio_button.dart';

class AccountPage extends StatefulWidget {
  AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  String? setting;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.bg_color,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 60.h,
              color: Colors.white,
              child: Center(
                child: Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 18.h),
            CustomRadioButton(
              groupValue: setting,
              text: "Edit Profile",
              value: "profile",
              onChanged: (value) {
                setState(
                  () {
                    setting = value.toString();
                  },
                );
              },
            ),
            CustomRadioButton(
              groupValue: setting,
              text: "Language",
              value: "language",
              onChanged: (value) {
                setState(
                  () {
                    setting = value.toString();
                  },
                );
              },
            ),
            CustomRadioButton(
              groupValue: setting,
              text: "Logout",
              value: "logout",
              onChanged: (value) {
                setState(
                  () {
                    setting = value.toString();
                  },
                );
              },
            ),
            CustomRadioButton(
              groupValue: setting,
              text: "Deactivate Account",
              value: "deactive",
              onChanged: (value) {
                setState(
                  () {
                    setting = value.toString();
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

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peer_vendors_ecommerce_ui/constant/colors.dart';

import '../../widget/custom_notification.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.bg_color,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, top: 30.h, right: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "All Users",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 30.h),
              Row(
                children: [
                  SizedBox(
                    width: 310.w,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        suffixIcon: Container(
                          width: 50,
                          height: 57,
                          decoration: BoxDecoration(
                            color: Color(0xFF373333),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Icon(
                            Icons.search_outlined,
                            color: Colors.white,
                          ),
                        ),
                        fillColor: Color(0xFF373333).withOpacity(.25),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF03A9F1),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Icon(
                      Icons.add_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 45.h),
              CustomNotifiaction(
                name: "Shariful Islam",
                description: "Update file.",
                imageUrl: 'http://surl.li/clxfw',
                notifcationNumber: "+3",
              ),
              SizedBox(height: 30.h),
              CustomNotifiaction2(
                imageUrl: 'http://surl.li/clxgq',
                name: "Yousuf",
                description: "Will do, super, thank you 😀😍",
              ),
              SizedBox(height: 30.h),
              CustomNotifiaction(
                name: "Eakub Ali",
                description: "How is koronavirus?🤔🤔",
                imageUrl: 'http://surl.li/clxhx',
                notifcationNumber: "+5",
              ),
              SizedBox(height: 30.h),
              CustomNotifiaction2(
                imageUrl: 'http://surl.li/clxic',
                name: "IH Sohag",
                description: "Will do, super, thank you 😀😍",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

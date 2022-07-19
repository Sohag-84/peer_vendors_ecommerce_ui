// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNotifiaction extends StatelessWidget {
  final imageUrl;
  final String name;
  final String description;
  final String notifcationNumber;
  const CustomNotifiaction({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.notifcationNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  height: 35.h,
                  width: 35.w,
                ),
              ),
              Positioned(
                right: 15,
                top: -10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      color: Color(0xFF414756),
                      height: 35.h,
                      width: 35.h,
                      child: Center(
                          child: Text(
                        notifcationNumber,
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      )),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                description,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF302D2D),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CustomNotifiaction2 extends StatelessWidget {
  final imageUrl;
  final String name;
  final String description;
  const CustomNotifiaction2({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  height: 35.h,
                  width: 35.w,
                ),
              ),
            ],
          ),
          SizedBox(width: 16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                description,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF302D2D),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

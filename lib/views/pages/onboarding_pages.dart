// ignore_for_file: unrelated_type_equality_checks, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peer_vendors_ecommerce_ui/constant/colors.dart';
import 'package:peer_vendors_ecommerce_ui/controller/onboarding_controller.dart';
import 'package:peer_vendors_ecommerce_ui/routes/routes.dart';

class OnboardingPages extends StatelessWidget {
  OnboardingPages({Key? key}) : super(key: key);

  final _controller = OnboardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.bg_color,
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller.pageController,
            onPageChanged: _controller.selectedPageIndex,
            itemCount: _controller.onboardingPage.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(_controller.onboardingPage[index].imageAsset),
                  SizedBox(
                    height: 35.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      _controller.onboardingPage.length,
                      (index) => Obx(
                        () {
                          return Container(
                            margin: EdgeInsets.all(4.r),
                            width: 12.w,
                            height: 12.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _controller.selectedPageIndex == index
                                  ? Color(0xFFFF7465)
                                  : Color(0xFFC4C4C4),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 34.w, right: 30.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          _controller.onboardingPage[index].title,
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                            color: OnboardingColor.textColor,
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          _controller.onboardingPage[index].description,
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w300,
                            color: OnboardingColor.textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
          Positioned(
            left: 20,
            bottom: 8,
            child: TextButton(
              onPressed: (){
                Get.offAllNamed(authenticationScreen);
              },
              child: Text("SKIP",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w600,color: Color(0xFFFF7465),),),
            ),
          ),
          Positioned(
            right: -8.w,
            bottom: -8.h,
            child: InkWell(
              onTap: (){
                _controller.forwardAction();
              },
              child: Container(
                height: 80.h,
                width: 150.w,
                decoration: BoxDecoration(
                    color: Color(0xFFC4C4C4),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(50.r))),
                child: Center(
                  child: Text("NEXT",style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.w600,color: Color(0xFF3A3030),),),
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}

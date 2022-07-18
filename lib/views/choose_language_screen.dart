import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peer_vendors_ecommerce_ui/constant/colors.dart';
import 'package:peer_vendors_ecommerce_ui/constant/strings.dart';

class ChooseLanguageScreen extends StatefulWidget {
  const ChooseLanguageScreen({Key? key}) : super(key: key);

  @override
  State<ChooseLanguageScreen> createState() => _ChooseLanguageScreenState();
}

class _ChooseLanguageScreenState extends State<ChooseLanguageScreen> {
  String? language;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.bg_color,
      body: SafeArea(
        child: Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 324.w,
                height: 291.h,
                decoration: BoxDecoration(
                  color: ChooseLanguageColor.bg_color,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 54.h,
                      ),
                      Text(
                        ChooseLanguageText.title,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.sp),
                      ),
                      SizedBox(
                        height: 30.h,
                        child: ListTile(
                          horizontalTitleGap: 0,
                          selectedColor: Colors.white,
                          title: Text(
                            ChooseLanguageText.language_1,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 15.sp),
                          ),
                          leading: Radio(
                            hoverColor: Colors.lightGreenAccent,
                            fillColor: MaterialStateColor.resolveWith(
                              (states) => Colors.green,
                            ),
                            value: "English",
                            groupValue: language,
                            onChanged: (value) {
                              setState(
                                () {
                                  language = value.toString();
                                },
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      SizedBox(
                        height: 30.h,
                        child: ListTile(
                          horizontalTitleGap: 0,
                          title: Text(
                            ChooseLanguageText.language_2,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 15.sp),
                          ),
                          leading: Radio(
                            hoverColor: Colors.lightGreenAccent,
                            fillColor: MaterialStateColor.resolveWith(
                              (states) => Colors.green,
                            ),
                            value: "Bangla",
                            groupValue: language,
                            onChanged: (value) {
                              setState(
                                () {
                                  language = value.toString();
                                },
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      SizedBox(
                        height: 30.h,
                        child: ListTile(
                          horizontalTitleGap: 0,
                          selectedColor: Colors.white,
                          title: Text(
                            ChooseLanguageText.language_3,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 15.sp),
                          ),
                          leading: Radio(
                            fillColor: MaterialStateColor.resolveWith(
                              (states) => Colors.green,
                            ),
                            value: "Hindi",
                            groupValue: language,
                            onChanged: (value) {
                              setState(
                                () {
                                  language = value.toString();
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -68.h,
                right: 120.w,
                child: Container(
                  height: 101.w,
                  width: 101.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(180.r),
                      border: Border.all(
                          color: BackgroundColor.bg_color, width: 10.w)),
                  child: Image.asset(
                    'images/splash.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

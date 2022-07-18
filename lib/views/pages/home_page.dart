// ignore_for_file: unused_field, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/colors.dart';
import '../../constant/strings.dart';

class HomePages extends StatelessWidget {
  HomePages({Key? key}) : super(key: key);

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.bg_color,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: const Color(0xffE5E5E5),
                collapsedHeight: 145,
                expandedHeight: 30,
                flexibleSpace: Padding(
                  padding: EdgeInsets.only(top: 0.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.white,
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.w, right: 10.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  "Nikli, Kishoreganj",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18.sp,
                                  ),
                                ),
                              ]),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Image.asset('images/question.png'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Center(
                        child: SizedBox(
                          height: 48.h,
                          width: 370.w,
                          child: TextField(
                            controller: _controller,
                            decoration: InputDecoration(
                              hintText: "Search Products",
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 10.w),
                              suffixIcon: Icon(
                                Icons.search_outlined,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6.r),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: SizedBox(
                          height: 40.h,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: HomePageText.categories.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 2.w, vertical: 2.h),
                                child: Container(
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFC4C4C4),
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 18.w, right: 18.w),
                                      child: Text(
                                        HomePageText.categories[index],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 15.w, right: 15.w),
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: HomePageText.gridImage.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 6,
                      childAspectRatio: 0.65,
                    ),
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: EdgeInsets.only(top: 28.h),
                        child: Card(
                          elevation: 15,
                          color: Colors.white,
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                            borderSide:
                                const BorderSide(color: Colors.transparent),
                          ),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                child: Image.asset(
                                  HomePageText.gridImage[index],
                                  height: 155.h,
                                  width: 115.w,
                                  fit: BoxFit.contain,
                                ),
                                top: -36.h,
                                left: 35.w,
                              ),
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 22.h),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        HomePageText.watchBrands[index],
                                        style: TextStyle(
                                          fontSize: 22.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                      Text(
                                        "Series 6. Red",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF868686),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16.h,
                                      ),
                                      Text(
                                        "\$ ${HomePageText.prices[index]}",
                                        style: TextStyle(
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF5956E9),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
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

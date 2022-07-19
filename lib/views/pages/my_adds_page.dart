// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';
import '../../constant/strings.dart';

class MyAddsPages extends StatefulWidget {
  const MyAddsPages({Key? key}) : super(key: key);

  @override
  State<MyAddsPages> createState() => _MyAddsPagesState();
}

class _MyAddsPagesState extends State<MyAddsPages>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.bg_color,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 20.h),
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) {
                return Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 328.h,
                        width: 368.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                              Text(
                                DialogText.title,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24.sp,
                                  color: Color(0xFF3A3030),
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              SizedBox(height: 30.h),
                              dialogText(
                                  title: DialogText.text_1,
                                  image: 'images/video.png'),
                              SizedBox(height: 20.h),
                              dialogText(
                                  title: DialogText.text_2,
                                  image: 'images/video.png'),
                              SizedBox(height: 20.h),
                              dialogText(
                                  title: DialogText.text_3,
                                  image: 'images/customer.png'),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: -15,
                        top: -15,
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(180),
                          ),
                          child: InkWell(
                            onTap: () => Get.back(),
                            child: SizedBox(
                              height: 65.h,
                              width: 65.w,
                              child: Card(
                                color: Colors.white,
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(180),
                                ),
                                child: Icon(Icons.close_outlined),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          },
          child: Icon(
            Icons.headphones,
            color: Color(0xFFFF7465),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "My Adds",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Color(0xFF3A3030)),
        ),
        centerTitle: true,
        elevation: 0,
        bottom: TabBar(
          controller: tabController,
          indicatorColor: Color(0xFFC4C4C4),
          labelColor: Colors.black,
          labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
          tabs: const [
            Tab(
              text: "My Adds",
              icon: Icon(Icons.shopping_bag),
            ),
            Tab(
              text: "My Favourites",
              icon: Icon(Icons.favorite_border),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              itemCount: 2,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  mainAxisExtent: 230),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Card(
                    elevation: 15,
                    color: Colors.white,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(color: Colors.transparent)),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          child: Image.asset(
                            "images/watch.png",
                            height: 120,
                          ),
                          top: -30,
                          left: 20,
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 22.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Apple Watch",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Series 6. Red",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF868686)),
                                ),
                                Text(
                                  "\$ 359",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF5956E9)),
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
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, top: 5),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 15,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: Colors.transparent)),
                  child: ListTile(
                    leading: Image.asset("images/watch.png"),
                    title: const Text(
                      "Apple Watch",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    subtitle: const Text(
                      "Series 6. Red",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xff868686),
                      ),
                    ),
                    trailing: const Text(
                      "\$ 359",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff5956E9),
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 15,
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  child: ListTile(
                    leading: Image.asset("images/watch.png"),
                    title: const Text(
                      "Apple Watch",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    subtitle: const Text(
                      "Series 6. Red",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xff868686),
                      ),
                    ),
                    trailing: const Text(
                      "\$ 359",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff5956E9),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row dialogText({required String title, required String image}) {
    return Row(
      children: [
        Image.asset(
          image,
          height: 25.h,
          width: 25.w,
        ),
        SizedBox(
          width: 15.w,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xFFFF7465),
            decoration: TextDecoration.none,
          ),
        )
      ],
    );
  }
}

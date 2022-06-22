import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:uiux_final/Page2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        SizedBox(
          height: 50.h,
          width: double.infinity,
          child: DecoratedBox(
            decoration: const BoxDecoration(color: Color(0xff195a89)),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "   冷氣專區",
                style:
                    TextStyle(fontSize: 16.sp, color: const Color(0xffffffff)),
              ),
            ),
          ),
        ),
        ImageSlideshow(
          initialPage: 0,
          width: double.infinity,
          height: 230.h,
          children: [
            Image.asset("assets/page1/slide1.jpg", fit: BoxFit.cover),
            Image.asset("assets/page1/slide2.jpg", fit: BoxFit.cover),
            Image.asset("assets/page1/slide3.jpg", fit: BoxFit.cover),
          ],
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20.w, 30.h, 20.w, 20.h),
          width: double.infinity,
          height: 165.h,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(const Color(0xff84b9af)),
              elevation: MaterialStateProperty.all(10),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Page2()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                const SizedBox(),
                Text("冷氣導購小助理",
                    style: TextStyle(fontSize: 20.sp, color: Colors.black)),
                SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(),
                      SizedBox(
                          child: Image.asset("assets/icons/tap.png",
                              width: 40.w, height: 40.h))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 30.h,
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(20.w, 0.h, 0.w, 7.5.h),
          child: Text(
            "消息快訊",
            style: TextStyle(fontSize: 16.sp),
          ),
        ),
        SizedBox(
          height: 45.h,
          width: double.infinity,
          child: Row(
            children: [
              SizedBox(width: 10.w),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xffe6b055))),
                onPressed: () {},
                child: Text(
                  "全部",
                  style: TextStyle(color: Colors.black, fontSize: 16.sp),
                ),
              ),
              SizedBox(width: 10.w),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xffE5E2DD))),
                onPressed: () {},
                child: Text(
                  "最新",
                  style: TextStyle(color: Colors.black, fontSize: 16.sp),
                ),
              ),
              SizedBox(width: 10.w),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xffE5E2DD))),
                onPressed: () {},
                child: Text(
                  "優惠相關",
                  style: TextStyle(color: Colors.black, fontSize: 16.sp),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Container(
            width: 350.w,
            height: 150.h,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: const Offset(0, 0)),
                ]),
            child: Row(
              children: [
                SizedBox(width: 10.w),
                SizedBox(
                    child: Image.asset(
                  "assets/page1/show.png",
                  width: 140.w,
                  height: 130.h,
                )),
                SizedBox(width: 10.w),
                SizedBox(
                    child: Column(
                  children: [
                    SizedBox(height: 8.h),
                    Text(
                      "夏日宅涼爽\n風扇、空調 清涼63折起",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                    SizedBox(height: 60.h),
                    Text(
                      "2022.04.22 - 2022.05.31",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ],
                ))
              ],
            )),
      ],
    ));
  }
}

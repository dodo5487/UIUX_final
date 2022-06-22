import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uiux_final/Page7.dart';
import 'model.dart';

class Box {
  bool isSel = false;
}

class Page6 extends StatefulWidget {
  const Page6({Key? key,required this.options}) : super(key: key);

  final Option options;

  @override
  State<Page6> createState() => _Page6State(options: options);
}

class _Page6State extends State<Page6> {
  var box1 = Box();
  var box2 = Box();
  var box3 = Box();
  var box4 = Box();
  var box5 = Box();

  _Page6State({Key? key,required this.options});
  Option options;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
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
                    "   冷氣專區 > 冷氣導購小助理",
                    style: TextStyle(
                        fontSize: 16.sp, color: const Color(0xffffffff)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80.h,
              width: double.infinity,
              child: DecoratedBox(
                decoration: const BoxDecoration(color: Color(0xff84B9AF)),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "   1 > 2. 特殊環境狀況",
                    style: TextStyle(fontSize: 24.sp),
                  ),
                ),
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "    如有下列情況請勾選：",
                  style: TextStyle(
                      fontSize: 16.sp, color: const Color(0xff4C4D4F)),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20.w, 0.h, 20.w, 0.h),
                  child: SizedBox(
                    height: 320.h,
                    child: ElevatedButton(
                        onPressed: () {
                          if (box1.isSel == false) {
                            box1.isSel = true;
                            box5.isSel = false;
                            if(!options.page6.contains(1)){
                              options.page6.add(1);
                            }
                            options.page6.remove(-1);
                            print(options.page6);
                          }
                          else {
                            box1.isSel = false;
                          }
                          setState(() {

                          });
                        },
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(BorderSide(
                                color: box1.isSel
                                    ? const Color(0xff195A89)
                                    : Colors.grey)),
                            backgroundColor: MaterialStateProperty.all(
                                box1.isSel
                                    ? const Color(0xffd2e0e9)
                                    : Colors.white),
                            elevation: MaterialStateProperty.all(10),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 20.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    "assets/page6/west.jpg",
                                    width: 340.w,
                                    height: 200.h,
                                    fit: BoxFit.fill,
                                  )),
                              Text(
                                '西曬',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: box1.isSel
                                        ? const Color(0xff195A89)
                                        : Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '傍晚太陽即將下山時，帶有熱源的光線會照射到房子導致熱氣無法散出。 ',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: box1.isSel
                                        ? const Color(0xff195A89)
                                        : Colors.black),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20.w, 0.h, 20.w, 0.h),
                  child: SizedBox(
                    height: 320.h,
                    child: ElevatedButton(
                        onPressed: () {
                          if (box2.isSel == false) {
                            box2.isSel = true;
                            box5.isSel = false;
                          }
                          else {
                            box2.isSel = false;
                          }
                          setState(() {

                          });
                        },
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(BorderSide(
                                color: box2.isSel
                                    ? const Color(0xff195A89)
                                    : Colors.grey)),
                            backgroundColor: MaterialStateProperty.all(
                                box2.isSel
                                    ? const Color(0xffd2e0e9)
                                    : Colors.white),
                            elevation: MaterialStateProperty.all(10),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 20.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    "assets/page6/roof.jpg",
                                    width: 340.w,
                                    height: 200.h,
                                    fit: BoxFit.fill,
                                  )),
                              Text(
                                '頂樓',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: box2.isSel
                                        ? const Color(0xff195A89)
                                        : Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '陽光直接曝曬屋頂，無遮蔽導致室內溫度無法釋放，ˋ整日高溫。',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: box2.isSel
                                        ? const Color(0xff195A89)
                                        : Colors.black),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20.w, 0.h, 20.w, 0.h),
                  child: SizedBox(
                    height: 320.h,
                    child: ElevatedButton(
                        onPressed: () {
                          if (box3.isSel == false) {
                            box3.isSel = true;
                            box5.isSel = false;
                          }
                          else {
                            box3.isSel = false;
                          }
                          setState(() {

                          });
                        },
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(BorderSide(
                                color: box3.isSel
                                    ? const Color(0xff195A89)
                                    : Colors.grey)),
                            backgroundColor: MaterialStateProperty.all(
                                box3.isSel
                                    ? const Color(0xffd2e0e9)
                                    : Colors.white),
                            elevation: MaterialStateProperty.all(10),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 20.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    "assets/page6/high.jpg",
                                    width: 340.w,
                                    height: 200.h,
                                    fit: BoxFit.fill,
                                  )),
                              Text(
                                '挑高',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: box3.isSel
                                        ? const Color(0xff195A89)
                                        : Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '冷氣安裝位置於天花板，且挑高高度超過3米2 (320公分)於天花板。',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: box3.isSel
                                        ? const Color(0xff195A89)
                                        : Colors.black),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20.w, 0.h, 20.w, 0.h),
                  child: SizedBox(
                    height: 320.h,
                    child: ElevatedButton(
                        onPressed: () {
                          if (box4.isSel == false) {
                            box4.isSel = true;
                            box5.isSel = false;
                          }
                          else {
                            box4.isSel = false;
                          }
                          setState(() {

                          });
                        },
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(BorderSide(
                                color: box4.isSel
                                    ? const Color(0xff195A89)
                                    : Colors.grey)),
                            backgroundColor: MaterialStateProperty.all(
                                box4.isSel
                                    ? const Color(0xffd2e0e9)
                                    : Colors.white),
                            elevation: MaterialStateProperty.all(10),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 20.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    "assets/page6/iron.jpg",
                                    width: 340.w,
                                    height: 200.h,
                                    fit: BoxFit.fill,
                                  )),
                              Text(
                                '鐵皮屋',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: box4.isSel
                                        ? const Color(0xff195A89)
                                        : Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '鐵皮吸熱且熱氣無法散出，整日持續高溫。',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: box4.isSel
                                        ? const Color(0xff195A89)
                                        : Colors.black),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20.w, 0.h, 20.w, 0.h),
                  child: SizedBox(
                    height: 55.h,
                    child: ElevatedButton(
                        onPressed: () {
                          if (box1.isSel == true || box2.isSel == true || box3.isSel == true || box4.isSel == true || box5.isSel == false) {
                            box1.isSel = false;
                            box2.isSel = false;
                            box3.isSel = false;
                            box4.isSel = false;
                            box5.isSel = true;
                          }
                          else if (box5.isSel == true) {
                            box5.isSel = false;
                          }
                          setState(() {

                          });
                        },
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(BorderSide(
                                color: box5.isSel
                                    ? const Color(0xff195A89)
                                    : Colors.grey)),
                            backgroundColor: MaterialStateProperty.all(
                                box5.isSel
                                    ? const Color(0xffd2e0e9)
                                    : Colors.white),
                            elevation: MaterialStateProperty.all(10),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                        child: Text(
                          '無符合情況',
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: box5.isSel
                                  ? const Color(0xff195A89)
                                  : Colors.black),
                        ),),
                  ),
                ),
                SizedBox(
                  height: 70.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50.h,
                      width: 120.w,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xff84b9af)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(10)))),
                          child: Text(
                            "上一步",
                            style: TextStyle(fontSize: 20.sp),
                          )),
                    ),
                    SizedBox(
                      width: 24.w,
                    ),
                    SizedBox(
                      height: 50.h,
                      width: 120.w,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Page7()));
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xffE6B055)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(10)))),
                          child: Text(
                            "下一步",
                            style: TextStyle(fontSize: 20.sp),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}

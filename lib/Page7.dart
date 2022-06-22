import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uiux_final/Page8.dart';

class Page7 extends StatefulWidget {
  const Page7({Key? key}) : super(key: key);

  @override
  State<Page7> createState() => _Page7State();
}

class _Page7State extends State<Page7> {

  int selNum = -1;
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
                    "   1 > 2 > 3. 原冷氣機型 / 安裝位置",
                    style: TextStyle(fontSize: 24.sp),
                  ),
                ),
              ),
            ),
            Expanded(child: ListView(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "    請勾選符合原家中機台類型的敘述：",
                  style: TextStyle(
                      fontSize: 16.sp, color: const Color(0xff4C4D4F)),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20.w, 0.h, 20.w, 0.h),
                  child: SizedBox(
                    height: 285.h,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selNum = 1;
                          });
                        },
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(BorderSide(
                                color: selNum == 1
                                    ? const Color(0xff195A89)
                                    : Colors.grey)),
                            backgroundColor: MaterialStateProperty.all(
                                selNum == 1
                                    ? const Color(0xffd2e0e9)
                                    : Colors.white),
                            elevation: MaterialStateProperty.all(10),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 10.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    "assets/page7/dis.jpg",
                                    width: 200.w,
                                    height: 200.h,
                                  )),
                              Text(
                                '分離式',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: selNum == 1
                                        ? const Color(0xff195A89)
                                        : Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '有室外機，且安裝位置旁具備 220V 電源。 ',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: selNum == 1
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
                    height: 285.h,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selNum = 2;
                          });
                        },
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(BorderSide(
                                color: selNum == 2
                                    ? const Color(0xff195A89)
                                    : Colors.grey)),
                            backgroundColor: MaterialStateProperty.all(
                                selNum == 2
                                    ? const Color(0xffd2e0e9)
                                    : Colors.white),
                            elevation: MaterialStateProperty.all(10),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 10.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    "assets/page7/doub.jpg",
                                    width: 200.w,
                                    height: 200.h,
                                  )),
                              Text(
                                '窗型雙吹',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: selNum == 2
                                        ? const Color(0xff195A89)
                                        : Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '窗型冷氣，安裝位置在室內中央。 ',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: selNum == 2
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
                    height: 285.h,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selNum = 3;
                          });
                        },
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(BorderSide(
                                color: selNum == 3
                                    ? const Color(0xff195A89)
                                    : Colors.grey)),
                            backgroundColor: MaterialStateProperty.all(
                                selNum == 3
                                    ? const Color(0xffd2e0e9)
                                    : Colors.white),
                            elevation: MaterialStateProperty.all(10),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 10.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    "assets/page7/left.jpg",
                                    width: 200.w,
                                    height: 200.h,
                                  )),
                              Text(
                                '窗型左吹',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: selNum == 3
                                        ? const Color(0xff195A89)
                                        : Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '正面對冷氣，右邊為牆壁且扇頁在左側。 ',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: selNum == 3
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
                    height: 285.h,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selNum = 4;
                          });
                        },
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(BorderSide(
                                color: selNum == 4
                                    ? const Color(0xff195A89)
                                    : Colors.grey)),
                            backgroundColor: MaterialStateProperty.all(
                                selNum == 4
                                    ? const Color(0xffd2e0e9)
                                    : Colors.white),
                            elevation: MaterialStateProperty.all(10),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 10.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    "assets/page7/right.jpg",
                                    width: 200.w,
                                    height: 200.h,
                                  )),
                              Text(
                                '窗型右吹',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: selNum == 4
                                        ? const Color(0xff195A89)
                                        : Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '正面對冷氣，左邊為牆壁且扇頁在右側。 ',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: selNum == 4
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
                    height: 285.h,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selNum = 5;
                          });
                        },
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(BorderSide(
                                color: selNum == 5
                                    ? const Color(0xff195A89)
                                    : Colors.grey)),
                            backgroundColor: MaterialStateProperty.all(
                                selNum == 5
                                    ? const Color(0xffd2e0e9)
                                    : Colors.white),
                            elevation: MaterialStateProperty.all(10),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 10.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    "assets/page7/upright.jpg",
                                    width: 200.w,
                                    height: 200.h,
                                  )),
                              Text(
                                '直立式',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: selNum == 5
                                        ? const Color(0xff195A89)
                                        : Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '壓縮機、冷凝器、風扇等集中於一機體中。 ',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: selNum == 5
                                        ? const Color(0xff195A89)
                                        : Colors.black),
                              ),
                            ],
                          ),
                        )),
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
                                MaterialPageRoute(builder: (context) => const Page8()));
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
            ))
          ],
        ),
      ),
    );
  }
}

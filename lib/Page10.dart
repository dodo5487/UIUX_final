import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Page11.dart';

class Page10 extends StatefulWidget {
  const Page10({Key? key}) : super(key: key);

  @override
  State<Page10> createState() => _Page10State();
}

class _Page10State extends State<Page10> {
  int selNum = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  "   1 > 2 > 3 > 4. 品牌偏好",
                  style: TextStyle(fontSize: 24.sp),
                ),
              ),
            ),
          ),
          Expanded(
              child: ListView(
                children: [
                  Text(
                    "       如有偏好的品牌，請從下方勾選。",
                    style: TextStyle(
                        fontSize: 16.sp, color: const Color(0xff4C4D4F)),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 165.w,
                        height: 165.h,
                        padding: EdgeInsets.fromLTRB(0.w, 0.h, 10.w, 0.h),
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
                                        borderRadius:
                                            BorderRadius.circular(10)))),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0.w, 64.h, 0.w, 20.h),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipRRect(
                                      child: Image.asset(
                                    "assets/logo/panasonic.png",
                                  )),
                                  Text(
                                    '國際',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      color: selNum == 1
                                          ? const Color(0xff195A89)
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      Container(
                        width: 165.w,
                        height: 165.h,
                        padding: EdgeInsets.fromLTRB(10.w, 0.h, 0.w, 0.h),
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
                                        borderRadius:
                                            BorderRadius.circular(10)))),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0.w, 64.h, 0.w, 20.h),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipRRect(
                                      child: Image.asset(
                                    "assets/logo/daikin.png",
                                  )),
                                  Text(
                                    '大金',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      color: selNum == 2
                                          ? const Color(0xff195A89)
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                    Container(
                      width: 165.w,
                      height: 165.h,
                      padding: EdgeInsets.fromLTRB(0.w, 0.h, 10.w, 0.h),
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
                                      borderRadius:
                                      BorderRadius.circular(10)))),
                          child: Padding(
                            padding:
                            EdgeInsets.fromLTRB(0.w, 64.h, 0.w, 20.h),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                    child: Image.asset(
                                      "assets/logo/hitachi.png",
                                    )),
                                Text(
                                  '日立',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: selNum == 3
                                        ? const Color(0xff195A89)
                                        : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    Container(
                      width: 165.w,
                      height: 165.h,
                      padding: EdgeInsets.fromLTRB(10.w, 0.h, 0.w, 0.h),
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
                                      borderRadius:
                                      BorderRadius.circular(10)))),
                          child: Padding(
                            padding:
                            EdgeInsets.fromLTRB(0.w, 64.h, 0.w, 20.h),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                    child: Image.asset(
                                      "assets/logo/mitsubishi.png",
                                    )),
                                Text(
                                  '三菱電機',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: selNum == 4
                                        ? const Color(0xff195A89)
                                        : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ],),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width:165.w,
                      height: 165.h,
                      padding: EdgeInsets.fromLTRB(0.w, 0.h, 10.w, 0.h),
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
                                      borderRadius:
                                      BorderRadius.circular(10)))),
                          child: Padding(
                            padding:
                            EdgeInsets.fromLTRB(0.w, 64.h, 0.w, 20.h),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                    child: Image.asset(
                                      "assets/logo/sampo.png",
                                    )),
                                Text(
                                  '聲寶',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: selNum == 5
                                        ? const Color(0xff195A89)
                                        : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    Container(
                      width:165.w,
                      height: 165.h,
                      padding: EdgeInsets.fromLTRB(10.w, 0.h, 0.w, 0.h),
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selNum = 6;
                            });
                          },
                          style: ButtonStyle(
                              side: MaterialStateProperty.all(BorderSide(
                                  color: selNum == 6
                                      ? const Color(0xff195A89)
                                      : Colors.grey)),
                              backgroundColor: MaterialStateProperty.all(
                                  selNum == 6
                                      ? const Color(0xffd2e0e9)
                                      : Colors.white),
                              elevation: MaterialStateProperty.all(10),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(10)))),
                          child: Padding(
                            padding:
                            EdgeInsets.fromLTRB(0.w, 64.h, 0.w, 20.h),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                    child: Image.asset(
                                      "assets/logo/teco.png",
                                    )),
                                Text(
                                  '東元',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: selNum == 6
                                        ? const Color(0xff195A89)
                                        : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ],),
                  SizedBox(height: 10.h,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width:165.w,
                      height: 165.h,
                      padding: EdgeInsets.fromLTRB(0.w, 0.h, 10.w, 0.h),
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selNum = 7;
                            });
                          },
                          style: ButtonStyle(
                              side: MaterialStateProperty.all(BorderSide(
                                  color: selNum == 7
                                      ? const Color(0xff195A89)
                                      : Colors.grey)),
                              backgroundColor: MaterialStateProperty.all(
                                  selNum == 7
                                      ? const Color(0xffd2e0e9)
                                      : Colors.white),
                              elevation: MaterialStateProperty.all(10),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(10)))),
                          child: Padding(
                            padding:
                            EdgeInsets.fromLTRB(0.w, 40.h, 0.w, 20.h),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                    child: Image.asset(
                                      "assets/logo/heran.png",
                                    )),
                                Text(
                                  '禾聯',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: selNum == 7
                                        ? const Color(0xff195A89)
                                        : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    Container(
                      width:165.w,
                      height: 165.h,
                      padding: EdgeInsets.fromLTRB(10.w, 0.h, 0.w, 0.h),
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selNum = 8;
                            });
                          },
                          style: ButtonStyle(
                              side: MaterialStateProperty.all(BorderSide(
                                  color: selNum == 8
                                      ? const Color(0xff195A89)
                                      : Colors.grey)),
                              backgroundColor: MaterialStateProperty.all(
                                  selNum == 8
                                      ? const Color(0xffd2e0e9)
                                      : Colors.white),
                              elevation: MaterialStateProperty.all(10),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(10)))),
                          child: Padding(
                            padding:
                            EdgeInsets.fromLTRB(0.w, 40.h, 0.w, 20.h),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                    child: Image.asset(
                                      "assets/logo/sanyong.png",
                                    )),
                                Text(
                                  '台灣三洋',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: selNum == 8
                                        ? const Color(0xff195A89)
                                        : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ],),
                  SizedBox(height: 15.h,),
                  Container(
                    height: 55.h,
                    padding: EdgeInsets.fromLTRB(30.w, 0.h, 30.w, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selNum = -1;
                        });
                      },
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(BorderSide(
                              color: selNum == -1
                                  ? const Color(0xff195A89)
                                  : Colors.grey)),
                          backgroundColor: MaterialStateProperty.all(
                              selNum == -1
                                  ? const Color(0xffd2e0e9)
                                  : Colors.white),
                          elevation: MaterialStateProperty.all(10),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(10)))),
                      child: Text(
                        '無特別偏好',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: selNum == -1
                              ? const Color(0xff195A89)
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.h,),
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
                                  MaterialPageRoute(builder: (context) => const Page11()));
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xffE6B055)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(10)))),
                            child: Text(
                              "完成",
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
    );
  }
}

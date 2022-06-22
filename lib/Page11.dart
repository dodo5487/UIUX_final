import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page11 extends StatefulWidget {
  const Page11({Key? key}) : super(key: key);

  @override
  State<Page11> createState() => _Page11State();
}

class _Page11State extends State<Page11> {
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
                  "  清單號：00202205315",
                  style: TextStyle(fontSize: 24.sp),
                ),
              ),
            ),
          ),
          Expanded(
              child: ListView(
                children: [SizedBox(
                  width: double.infinity,
                  child: Padding(
            padding: EdgeInsets.fromLTRB(20.w, 0.h, 20.w, 50.h),
            child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1. 坪數：",
                      style: TextStyle(
                          fontSize: 16.sp, color: const Color(0xff195A89)),
                    ),
                    Text(
                      "4-5坪",
                      style: TextStyle(
                          fontSize: 16.sp, color: Colors.black),
                    ),
                    SizedBox(height: 20.h,),
                    Text(
                      "2. 特殊環境狀況：",
                      style: TextStyle(
                          fontSize: 16.sp, color: const Color(0xff195A89)),
                    ),
                    Text(
                      "頂樓",
                      style: TextStyle(
                          fontSize: 16.sp, color: Colors.black),
                    ),
                    SizedBox(height: 20.h,),
                    Text(
                      "3. 原冷氣機型 / 安裝位置：",
                      style: TextStyle(
                          fontSize: 16.sp, color: const Color(0xff195A89)),
                    ),
                    Text(
                      "(1)分離式",
                      style: TextStyle(
                          fontSize: 16.sp, color: Colors.black),
                    ),
                    SizedBox(height: 20.h,),
                    ClipRRect(
                        child: Image.asset(
                          "assets/form.jpg",height: 200.h,width: double.infinity,fit: BoxFit.fill,
                        )),
                    SizedBox(height: 20.h,),
                    Text(
                      "安裝在房間窗戶旁邊，插頭位於右下角，下方有一個矮櫃，原室外機安裝於另一房間外陽台。",
                      style: TextStyle(
                          fontSize: 16.sp, color: Colors.black),
                    ),
                    Text(
                      "下方有一個矮櫃，原室外機安裝於另一房間外陽台。",
                      style: TextStyle(
                          fontSize: 16.sp, color: Colors.black),
                    ),
                    Text(
                      "(2-1)原機台大小 292*702*201 ",
                      style: TextStyle(
                          fontSize: 16.sp, color: Colors.black),
                    ),
                    Text(
                      "(2-2)預留安裝空間 310*723*0",
                      style: TextStyle(
                          fontSize: 16.sp, color: Colors.black),
                    ),
                    Text(
                      "(3)位於4樓；外牆可釘，內牆可釘；有踩踏空間",
                      style: TextStyle(
                          fontSize: 16.sp, color: Colors.black),
                    ),
                    Text(
                      "(4)不須更換機種",
                      style: TextStyle(
                          fontSize: 16.sp, color: Colors.black),
                    ),
                    SizedBox(height: 20.h,),
                    Text(
                      "4. 品牌偏好",
                      style: TextStyle(
                          fontSize: 16.sp, color: const Color(0xff195A89)),
                    ),
                    Text(
                      "無特別偏好  ",
                      style: TextStyle(
                          fontSize: 16.sp, color: Colors.black),
                    ),
                    SizedBox(height: 50.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50.h,
                          width: 120.w,
                          child: ElevatedButton(
                              onPressed: () {
                                // Navigator.pop(context);
                              },
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xff84b9af)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(10)))),
                              child: Text(
                                "清單列表",
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
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(builder: (context) => const Page11()));
                              },
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xffE6B055)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(10)))),
                              child: Text(
                                "產品推薦",
                                style: TextStyle(fontSize: 20.sp),
                              )),
                        ),
                      ],
                    ),

                  ],
            ),
          ),
                ),
              ]))
        ],
      ),
    );
  }
}

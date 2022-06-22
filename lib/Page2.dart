
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uiux_final/Page5.dart';


class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(children: [
            SizedBox(
              height: 50.h,
              width: double.infinity,
              child: DecoratedBox(
                decoration: const BoxDecoration(color: Color(0xff195a89)),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "   冷氣專區 > 冷氣導購小助理",
                    style:
                    TextStyle(fontSize: 16.sp, color: const Color(0xffffffff)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.h),
            Text("歡迎使用",style: TextStyle(fontSize: 48.sp,color: const Color(0xff195a89))),
            Text("冷氣導購小助理",style: TextStyle(fontSize: 32.sp,color: const Color(0xff195a89))),
            SizedBox(height: 40.h),
            Text("只要簡單 5 步驟",style: TextStyle(fontSize: 16.sp,color: Colors.black)),
            Text("選擇適合產品＆專人諮詢無負擔",style: TextStyle(fontSize: 16.sp,color: Colors.black)),
            SizedBox(height: 60.h),
          Container(
              padding: EdgeInsets.fromLTRB(20.w, 0.h, 20.w, 0.h),
              width: double.infinity,
              height: 115.h,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(const Color(0xffE6B055)),
                  elevation: MaterialStateProperty.all(10),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)))
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Page5()));
                },
                child: Text("立即開始",
                    style: TextStyle(fontSize: 20.sp, color: Colors.black)),
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              padding: EdgeInsets.fromLTRB(20.w, 0.h, 20.w, 0.h),
              width: double.infinity,
              height: 115.h,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(const Color(0xff84B9AF)),
                    elevation: MaterialStateProperty.all(10),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))
                ),
                onPressed: () { },
                child: Text("使用教學",
                    style: TextStyle(fontSize: 20.sp, color: Colors.black)),
              ),
            ),
          ],),
        ));
  }
}

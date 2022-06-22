import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uiux_final/Page6.dart';
import 'model.dart' as m;

class Page5 extends StatefulWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  int selNum = -1;
  static var options = m.Option();

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
                        "   1. 坪數計算",
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
                        "    以下提供三種方式選填：",
                        style: TextStyle(
                            fontSize: 16.sp, color: const Color(0xff4C4D4F)),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "    (1) 直接輸入",
                        style: TextStyle(
                            fontSize: 20.sp, color: const Color(0xff195A89)),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.w, 0.h, 20.w, 0.h),
                        child: Container(
                          height: 55.h,
                          width: 350.w,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "請輸入坪數 :  ",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                              SizedBox(
                                width: 30.w,
                                child: TextFormField(
                                  onChanged: (context) => {
                                    if(context == ""){
                                      options.page5ping = -1
                                    }else
                                      {
                                        options.page5ping = int.parse(context)
                                      }                                 },
                                  textAlign: TextAlign.center,
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                              Text(
                                "  坪",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Center(
                        child: Container(
                          width: 346.w,
                          height: 1.h,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        "    (2) 坪數計算機",
                        style: TextStyle(
                            fontSize: 20.sp, color: const Color(0xff195A89)),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(25.w, 0.h, 25.w, 0.h),
                        child: SizedBox(
                          height: 52.h,
                          child: Text(
                            "請輸入房間的長及寬度 (單位為公分) ，系統將自動為您計算房間坪數。",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: const Color(0xff4C4D4F)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.w, 0.h, 20.w, 0.h),
                        child: Container(
                          height: 115.h,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "請輸入房間尺寸 (單位為公分)：",
                                  style: TextStyle(fontSize: 16.sp),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "長  ",
                                      style: TextStyle(fontSize: 16.sp),
                                    ),
                                    SizedBox(
                                      width: 60.w,
                                      child: TextFormField(
                                        onChanged:  (context) => {
                                          if(context==""){
                                            options.page5height = 0
                                          }else{
                                          options.page5height = int.parse(context),},
                                          setState((){})
                                        },
                                        textAlign: TextAlign.center,
                                        decoration: const InputDecoration(
                                          border: UnderlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      " x 寬  ",
                                      style: TextStyle(fontSize: 16.sp),
                                    ),
                                    SizedBox(
                                      width: 60.w,
                                      child: TextFormField(
                                        onChanged:  (context) => {
                                          if(context==""){
                                            options.page5width = 0
                                          }
                                          else{
                                          options.page5width = int.parse(context),},
                                          setState((){})
                                        },
                                        textAlign: TextAlign.center,
                                        decoration: const InputDecoration(
                                          border: UnderlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "=  ",
                                      style: TextStyle(fontSize: 16.sp),
                                    ),
                                    Text(((options.page5height * options.page5width / 10 * 0.3025).round()/1000).toString()),
                                    Text(
                                      "坪  ",
                                      style: TextStyle(fontSize: 16.sp),
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Center(
                        child: Container(
                          width: 346.w,
                          height: 1.h,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "    (3) 房間擺設參考",
                        style: TextStyle(
                            fontSize: 20.sp, color: const Color(0xff195A89)),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(25.w, 0.h, 25.w, 0.h),
                        child: SizedBox(
                          height: 52.h,
                          child: Text(
                            "請參照下方圖片及文字說明，比對房內擺設及空間後選擇較符合的選項。",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: const Color(0xff4C4D4F)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20.w, 0.h, 20.w, 0.h),
                        child: SizedBox(
                          height: 370.h,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  selNum = 1;
                                  options.page5pings = "4-5坪";
                                });
                              },
                              style: ButtonStyle(
                                  side: MaterialStateProperty.all(
                                       BorderSide(color: selNum == 1 ?  const Color(0xff195A89) : Colors.grey)),
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
                                padding:
                                    EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 20.h),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          "assets/page5/45house.jpg",
                                          width: 340.w,
                                          height: 200.h,
                                          fit: BoxFit.fill,
                                        )),
                                    Text(
                                      '此房約4-5坪 ',
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          color: selNum == 1 ? const Color(0xff195A89) : Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '房內擺放一雙人床、一沙發 (或雙門衣櫃) 及單人書桌後，約剩2人寬的走道。 ',
                                      style: TextStyle(
                                          fontSize: 20.sp, color: selNum == 1 ? const Color(0xff195A89) : Colors.black),
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
                          height: 370.h,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  options.page5pings = "8-9坪";
                                  selNum = 2;
                                });
                              },
                              style: ButtonStyle(
                                  side: MaterialStateProperty.all(
                                      BorderSide(color: selNum == 2 ? const Color(0xff195A89) : Colors.grey)),
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
                                padding:
                                    EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 20.h),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          "assets/page5/89house.jpg",
                                          width: 340.w,
                                          height: 200.h,
                                          fit: BoxFit.fill,
                                        )),
                                    Text(
                                      '此房約8-9坪 ',
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          color: selNum == 2 ? const Color(0xff195A89) : Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '房內擺放3+2沙發椅、60*60方桌、八人餐桌後，仍有空曠的活動空間。 ',
                                      style: TextStyle(
                                          fontSize: 20.sp, color: selNum == 2 ? const Color(0xff195A89) : Colors.black),
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
                                      MaterialPageRoute(builder: (context) =>  Page6(options: options,)));
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
                  ),
                )
              ],
            )));
  }
}

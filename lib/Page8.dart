import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:avatar_glow/avatar_glow.dart';
import 'Page10.dart';

enum Out { yes, no }
enum In { yes, no }
enum YesNo { yes, no }
enum Change { yes, no, consider }

class Page8 extends StatefulWidget {
  const Page8({Key? key}) : super(key: key);

  @override
  State<Page8> createState() => _Page8State();
}

class _Page8State extends State<Page8> {
  String? imgPath;
  stt.SpeechToText speech = stt.SpeechToText();
  bool isListening = false;
  bool _speechEnabled = false;
  bool repeat = false;
  Out? _out = Out.yes;
  In? _in = In.yes;
  YesNo? _yesNo = YesNo.yes;
  Change? _change = Change.yes;

  final TextEditingController _textEditingController = TextEditingController();
  FocusNode myFocusNode = FocusNode();

  Future<void> _startListening() async {
    repeat = false;
    await speech.listen(
      onResult: _onSpeechResult,
    );
    setState(() {});
  }

  void _initSpeech() async {
    _speechEnabled = await speech.initialize();
    setState(() {});
  }

  void _onSpeechResult(result) {
    if (speech.isNotListening && repeat == false) {
      setState(() {
        repeat = true;
        _textEditingController.text += result.recognizedWords + '，';
        isListening = false;
      });
    }
  }

  Future<void> _stopListening() async {
    await speech.stop();
    setState(() {
      repeat = false;
    });
  }

  void listen() async {
    if (isListening) {
      isListening = false;
      setState(() {});
    } else if (_speechEnabled) {
      isListening = true;
      speech.isNotListening ? await _startListening() : await _stopListening();
    }
  }

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {myFocusNode.unfocus()},
      child: SafeArea(
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
            Expanded(
                child: Padding(
              padding: EdgeInsets.fromLTRB(20.w, 0.h, 20.w, 0.h),
              child: ListView(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "請根據下方指示完善資料，以利推薦合適產品。",
                    style: TextStyle(
                        fontSize: 16.sp, color: const Color(0xff4C4D4F)),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "(1) 照片上傳",
                    style: TextStyle(
                        fontSize: 20.sp, color: const Color(0xff195A89)),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "請拍攝並上傳一張原冷氣(孔)正面照，包含周圍家具擺設及插頭位置佳。",
                    style: TextStyle(
                        fontSize: 16.sp, color: const Color(0xff4C4D4F)),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20.w, 0.h, 20.w, 0.h),
                    child: SizedBox(
                      height: 200.h,
                      child: ElevatedButton(
                          onPressed: () async {
                            final ImagePicker _picker = ImagePicker();
                            // Pick an image
                            final XFile? image = await _picker.pickImage(
                                source: ImageSource.gallery,
                                maxWidth: 340.w,
                                maxHeight: 185.h);
                            setState(() {
                              imgPath = image?.path;
                            });
                          },
                          style: ButtonStyle(
                              side: MaterialStateProperty.all(
                                  const BorderSide(color: Colors.grey)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              elevation: MaterialStateProperty.all(10),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10)))),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 10.h),
                            child: imgPath == null
                                ? Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "+",
                                        style: TextStyle(
                                          fontSize: 48.sp,
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  )
                                : Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.file(
                                          File(imgPath!),
                                          fit: BoxFit.fill,
                                          width: 340.w,
                                          height: 185.h,
                                        ),
                                      ),
                                    ],
                                  ),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "請簡述家中冷氣安裝位置，包含安裝牆面、周圍家具、插頭位置及電壓等。",
                    style: TextStyle(
                        fontSize: 16.sp, color: const Color(0xff4C4D4F)),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TextField(
                    focusNode: myFocusNode,
                    maxLines: 5,
                    controller: _textEditingController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '請點擊文字框輸入文字或按住麥克風進行語音輸入。',
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                      height: 100.h,
                      child: AvatarGlow(
                        animate: isListening,
                        repeat: true,
                        showTwoGlows: false,
                        endRadius: 80,
                        glowColor: const Color(0xff195a89),
                        duration: const Duration(milliseconds: 1000),
                        child: RawMaterialButton(
                          onPressed: () {
                            listen();
                          },
                          elevation: 2.0,
                          fillColor: const Color(0xff195a89),
                          child: isListening
                              ? const Icon(
                                  Icons.mic,
                                  size: 35.0,
                                  color: Colors.white,
                                )
                              : const Icon(
                                  Icons.mic_none,
                                  size: 35.0,
                                  color: Colors.white,
                                ),
                          padding: const EdgeInsets.all(15.0),
                          shape: const CircleBorder(),
                        ),
                      )),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    color: Colors.black,
                    height: 0.5.h,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    "(2) 尺寸測量",
                    style: TextStyle(
                        fontSize: 20.sp, color: const Color(0xff195A89)),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "請依照下列指示測量並填入對應尺寸數值，方便對照並選購合適產品。",
                    style: TextStyle(
                        fontSize: 16.sp, color: const Color(0xff4C4D4F)),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 115.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "請輸入原機台尺寸 (單位為公分)",
                            style: TextStyle(fontSize: 16.sp),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "高度:  ",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                              SizedBox(
                                width: 40.w,
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                              Text(
                                "寬度:  ",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                              SizedBox(
                                width: 40.w,
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                              Text(
                                "深度:  ",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                              SizedBox(
                                width: 40.w,
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 140.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "請輸入預留安裝空間 / 冷氣孔尺寸\n(單位為公分)",
                            style: TextStyle(
                              fontSize: 16.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "高度:  ",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                              SizedBox(
                                width: 40.w,
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                              Text(
                                "寬度:  ",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                              SizedBox(
                                width: 40.w,
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                              Text(
                                "深度:  ",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                              SizedBox(
                                width: 40.w,
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    color: Colors.black,
                    height: 0.5.h,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "(3) 安全評估",
                    style: TextStyle(
                        fontSize: 20.sp, color: const Color(0xff195A89)),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "方便了解並評估相關人員安裝冷氣的安全性。",
                    style: TextStyle(
                        fontSize: 16.sp, color: const Color(0xff4C4D4F)),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 110.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "請問您目前居住的樓層位置?",
                            style: TextStyle(
                              fontSize: 16.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 60.w,
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              ),
                              Text(
                                "  樓",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                            ],
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 170.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "請問您的牆面是否可以進行固定作業?\n(釘釘子、安裝架等)",
                            style: TextStyle(
                              fontSize: 16.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "外牆： ",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                              SizedBox(
                                width: 80.w,
                                child: ListTile(
                                  title: const Text('可'),
                                  leading: Radio<Out>(
                                    value: Out.yes,
                                    groupValue: _out,
                                    onChanged: (Out? value) {
                                      setState(() {
                                        _out = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 130.w,
                                child: ListTile(
                                  title: const Text("不可"),
                                  leading: Radio<Out>(
                                    value: Out.no,
                                    groupValue: _out,
                                    onChanged: (Out? value) {
                                      setState(() {
                                        _out = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "內牆： ",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                              SizedBox(
                                width: 80.w,
                                child: ListTile(
                                  title: const Text('可'),
                                  leading: Radio<In>(
                                    value: In.yes,
                                    groupValue: _in,
                                    onChanged: (In? value) {
                                      setState(() {
                                        _in = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 130.w,
                                child: ListTile(
                                  title: const Text("不可"),
                                  leading: Radio<In>(
                                    value: In.no,
                                    groupValue: _in,
                                    onChanged: (In? value) {
                                      setState(() {
                                        _in = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 170.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "請問您室外機預計安裝位置的外側是否\n有可供人跨出踩踏的空間?",
                            style: TextStyle(
                              fontSize: 16.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 100.w,
                                child: ListTile(
                                  title: const Text('有'),
                                  leading: Radio<YesNo>(
                                    value: YesNo.yes,
                                    groupValue: _yesNo,
                                    onChanged: (YesNo? value) {
                                      setState(() {
                                        _yesNo = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 100.w,
                                child: ListTile(
                                  title: const Text("無"),
                                  leading: Radio<YesNo>(
                                    value: YesNo.no,
                                    groupValue: _yesNo,
                                    onChanged: (YesNo? value) {
                                      setState(() {
                                        _yesNo = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/sop.jpg",
                        height: 280.h,
                        fit: BoxFit.fill,
                      )),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 0.5.h,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "(4) 其他",
                    style: TextStyle(
                        fontSize: 20.sp, color: const Color(0xff195A89)),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 110.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "請問您是否有想更換當前機種?",
                            style: TextStyle(
                              fontSize: 16.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 80.w,
                                child: ListTile(
                                  title: const Text('有'),
                                  leading: Radio<Change>(
                                    value: Change.yes,
                                    groupValue: _change,
                                    onChanged: (Change? value) {
                                      setState(() {
                                        _change = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 80.w,
                                child: ListTile(
                                  title: const Text("無"),
                                  leading: Radio<Change>(
                                    value: Change.no,
                                    groupValue: _change,
                                    onChanged: (Change? value) {
                                      setState(() {
                                        _change = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 180.w,
                                child: ListTile(
                                  title: const Text("尚在考慮"),
                                  leading: Radio<Change>(
                                    value: Change.consider,
                                    groupValue: _change,
                                    onChanged: (Change? value) {
                                      setState(() {
                                        _change = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "※如欲更換為分離式機種請注意：",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: const Color(0xff195A89),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "1. 牆外側是否有陽台或牆面可裝設冷氣室外機。",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: const Color(0xff195A89),
                    ),
                  ),
                  Text(
                    "2.安裝壁面是否有排水孔可供室內機排水，若無安裝時將依現場狀況施工。",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: const Color(0xff195A89),
                    ),
                  ),
                  Text(
                    "3.室內外機安裝處是否具有獨立 220V 電源。",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: const Color(0xff195A89),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "※如欲更換為窗型機種請注意：",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: const Color(0xff195A89),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "1. 安裝口必須大於機身 3 公分以上。",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: const Color(0xff195A89),
                    ),
                  ),
                  Text(
                    "2.安裝口旁需具有 220V 電源插座。",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: const Color(0xff195A89),
                    ),
                  ),
                  Text(
                    "3.注意牆面及風吹方向。",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: const Color(0xff195A89),
                    ),
                  ),
                  SizedBox(
                    height: 60.h,
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
                                  MaterialPageRoute(
                                      builder: (context) => const Page10()));
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
            ))
          ],
        ),
      )),
    );
  }
}

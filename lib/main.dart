import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:uiux_final/HomePage.dart';
import 'package:uiux_final/Page2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code';

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => const MaterialApp(
        title: _title,
        home: Scaffold(body: Homepage()), // 雖然我也不知道為啥 但要MaterialApp裡面要包一層Scaffold不然push會出現黑畫面
      ),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  final _controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _pages(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: const Color(0xffffffff),
      navBarHeight: 85.h,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: false,
      stateManagement: false,
      hideNavigationBarWhenKeyboardShows: true,
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      navBarStyle: NavBarStyle.style6,
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
    );
  }

  List<Widget> _pages() {
    return [
      const HomePage(),
      Center(child: Text("線上購物",style: TextStyle(fontSize: 48.sp),)),
      Center(child: Text("店家位置",style: TextStyle(fontSize: 48.sp),)),
      Center(child: Text("會員資料",style: TextStyle(fontSize: 48.sp),)),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Image.asset(
          "assets/icons/selhome.png",
        ),
        inactiveIcon: Image.asset(
          "assets/icons/unhome.png",
        ),
        title: ("首頁"),
      ),
      PersistentBottomNavBarItem(
          icon: Image.asset(
            "assets/icons/selshopping-cart.png",
          ),
          inactiveIcon: Image.asset(
            "assets/icons/unshopping-cart.png",
          ),
          title: ("線上購物")),
      PersistentBottomNavBarItem(
          icon: Image.asset(
            "assets/icons/sellocation.png",
          ),
          inactiveIcon: Image.asset(
            "assets/icons/unlocation.png",
          ),
          title: ("店家位置")),
      PersistentBottomNavBarItem(
          icon: Image.asset(
            "assets/icons/seluser.png",
          ),
          inactiveIcon: Image.asset(
            "assets/icons/unuser.png",
          ),
          title: ("會員資料"))
    ];
  }
}

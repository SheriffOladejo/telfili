import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:telfili/views/chat_messages.dart';
import 'package:telfili/views/homepage.dart';
import 'package:telfili/views/notifications.dart';
import 'package:telfili/views/profile.dart';

class TabView extends StatefulWidget {

  const TabView({Key key}) : super(key: key);

  @override
  State<TabView> createState() => _TabViewState();

}

class _TabViewState extends State<TabView> {

  PersistentTabController _controller;

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: buildScreens(),
      items: navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style15, // Choose the nav bar style with this property.
    );
  }

  List<Widget> buildScreens() {
    return [
      const HomePage(),
      const ChatMessages(),
      Container(),
      const Notifications(),
      const Profile(),
    ];
  }

  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const ImageIcon(
          AssetImage("assets/images/nav_home.png"),
        ),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: const ImageIcon(
          AssetImage("assets/images/nav_message.png"),
        ),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        iconSize: 60,
        contentPadding: 0,
        icon: Image.asset("assets/images/baby logo.png", width: 100, height: 100,),
        onPressed: (BuildContext context) {

        },
        inactiveColorSecondary: Colors.white,
        activeColorSecondary: Colors.white,
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: const ImageIcon(
          AssetImage("assets/images/nav_notification.png"),
        ),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: const ImageIcon(
          AssetImage("assets/images/nav_profile.png"),
        ),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.black,
      ),
    ];
  }

  Future<void> init() async {
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  void initState() {
    super.initState();
    init();
  }

}

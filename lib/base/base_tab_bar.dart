import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:my_assistant/utils/device_utils.dart';
import 'package:my_assistant/screens/home_screen.dart';
import 'package:my_assistant/screens/settings_screen.dart';

class BaseTabBarScreen extends StatefulWidget {  
  BaseTabBarScreen({Key key}) : super(key: key);

  _BaseTabBarScreenState createState() => _BaseTabBarScreenState();
}

class _BaseTabBarScreenState extends State<BaseTabBarScreen> {

  @override
  Widget build(BuildContext context) {
    if (isIos) {
      return CupertinoApp(
        theme: CupertinoThemeData(
            barBackgroundColor: CupertinoColors.extraLightBackgroundGray,
            primaryColor: CupertinoColors.destructiveRed),
        home: IOSTabBar(),   
      );
    } else {
      return MaterialApp(
        theme: ThemeData.light(),
        home: AndroidTabBar(),
      );
    }
  }
}

class AndroidTabBar extends StatefulWidget {
  AndroidTabBar({Key key}) : super(key: key);

  _AndroidTabBarState createState() => _AndroidTabBarState();
}

class _AndroidTabBarState extends State<AndroidTabBar> {

  int currentTabIndex = 0;
  onTapped(int index) {
    setState(() {
        currentTabIndex = index;
    });
  }

  List<Widget> tabs = [
    HomeScreen(),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),          
      ),
      body: tabs[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTabIndex,
        onTap: onTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("Settings"))
        ],
      ),
    );
  }
}

class IOSTabBar extends StatelessWidget {
  const IOSTabBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("Settings"))
        ]),
      tabBuilder: (context, index) {
        switch (index) {
          case 0: 
            return HomeScreen();
            break;
          case 1:
            return SettingsScreen();
            break; 
          default:
            return HomeScreen();
            break; 
        }
      }
    );
  }
}
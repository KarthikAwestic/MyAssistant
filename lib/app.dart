import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'AppConstants.dart';
import 'AppSettings.dart';

// Screens 
import 'package:my_assistant/base/splash_screen.dart';

class BootstrapModel {
  final bool isFirstTime;
  const BootstrapModel({@required this.isFirstTime});
}

class App extends StatefulWidget {

  final bool isFirstTime;

  App({@required AppEnvironment env, @required this.isFirstTime}) {
    Settings.environment = env;
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  // Add Necessary checks or updates need before launching.
  static Future<BootstrapModel> bootStrap() async {
    final isFirstTime = Settings.checkIsFirstTimeLogin();
    try {
      await Settings.initVersion();
    } catch (e) {
      print(e);
    }
    return BootstrapModel(isFirstTime: isFirstTime);
  }

  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
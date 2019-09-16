import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Screens 
//import 'package:my_assistant/screens/login_screen.dart';
import 'package:my_assistant/base/splash_screen.dart';

// Service 
import 'Service/global_service.dart';

Future<void> main() async {
  try {
    setupLocator().whenComplete(() {      
      runApp(SplashScreen());
    });    
  } catch(error) {
    print('Locator setup has failed');
  }
}
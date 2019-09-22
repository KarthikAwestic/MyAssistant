import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Base
import 'AppConstants.dart';
import 'app.dart';

// Service 
import 'Service/global_service.dart';

Future<void> main() async {
  final BootstrapModel bs = await App.bootStrap();
  try {
    setupLocator().whenComplete(() {      
      runApp(App(
        env: AppEnvironment.live,
        isFirstTime: bs.isFirstTime
      ));
    });    
  } catch(error) {
    print('Locator setup has failed');
  }
}


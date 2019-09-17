import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  /* Use this method to push for cupertino devices. 
     this function does not accept rount name. 
  */
  static CupertinoPageRoute push<T>(Widget widget, {RouteSettings settings, bool maintainState = true, bool fullscreenDialog = false}) {
    return CupertinoPageRoute<T>(
      builder: (BuildContext context) => widget,
      settings: settings,
      maintainState: maintainState,
      fullscreenDialog: fullscreenDialog,
    );
  }

  /* NOTE: Use this method to push for android devices. 
     this function does not accept rount name. 
  */
  
  static Route<T> fadeIn<T>(Widget widget, {RouteSettings settings, bool maintainState = true}) {
    return PageRouteBuilder<T>(
      opaque: false,
      pageBuilder: (_, __, ___) => widget,
      transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
        return FadeTransition(opacity: animation, child: child);
      },
      settings: settings,
      maintainState: maintainState,
    );
  }

  /* NOTE: Use this method only for Material Apps
     This will give same effect like modal transition.
  */
  static Route<T> slideUp<T> (Widget widget, {RouteSettings settings, bool maintainState = true}) {
    return MaterialPageRoute<T>(
      settings: settings,
      maintainState: maintainState,
      fullscreenDialog: true,
      builder: (BuildContext context) => widget,
    );
  }
}

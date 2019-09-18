import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_assistant/navigation/app_router.dart';


// NOTE: If want to navigate with particular screen with route name, uses this. 
class AppNavigator {
  //NOTE: Base
  AppNavigator(BuildContext context, Widget widget,
      {String routeName,
      RouteSettings settings,
      bool maintainState = true,
      bool fullscreenDialog = false,
      PageRoute hasRoute}) {
    Navigator.push<dynamic>(
      context,
      AppNavigator.push<dynamic>(widget,
          routeName: routeName,
          settings: settings,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
          hasRoute: hasRoute),
    );
  }

  static CupertinoPageRoute push<T>(Widget widget,
      {String routeName,
      RouteSettings settings,
      bool maintainState = true,
      bool fullscreenDialog = false,
      PageRoute hasRoute}) {
    final _settings =
        routeName != null ? RouteSettings(name: routeName) : settings;
    return AppRouter.push<T>(widget,
        settings: _settings,
        maintainState: maintainState,
        fullscreenDialog: fullscreenDialog);
  }

  static Route<T> fadeIn<T>(Widget widget,
      {String name, RouteSettings settings, bool maintainState: true}) {
    final _settings = name != null ? RouteSettings(name: name) : settings;
    return AppRouter.fadeIn<T>(
      widget,
      settings: _settings,
      maintainState: maintainState,
    );
  }

  static Route<T> slideUp<T>(Widget widget,
      {String name, RouteSettings settings, bool maintainState: true}) {
    final _settings = name != null ? RouteSettings(name: name) : settings;
    return AppRouter.slideUp<T>(
      widget,
      settings: _settings,
      maintainState: maintainState,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:my_assistant/Utils/device_utils.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isIos) {
      return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(middle: Text("Settings"),),
          child: Center(
            child: Text("Settings Page"),
          ));
    } else {
      return Scaffold(
        body: Center(
          child: Text("Settings Page"),
        ),
      );
    }
  }
}

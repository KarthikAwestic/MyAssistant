import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Base 
import 'base_tab_bar.dart';

class RootNaviagationScreen extends StatelessWidget {
  const RootNaviagationScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BaseTabBarScreen(),
    );
  }
}
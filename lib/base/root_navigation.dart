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

// class HomePage extends StatelessWidget {
//   const HomePage({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Platform.isIOS 
//     ? CupertinoAppHomePage() 
//     : MaterialAppHomePage(); 
//   }
// }

// class MaterialAppHomePage extends StatelessWidget {
//   const MaterialAppHomePage({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "My First Material Demo",
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Material Demo"),
//         ),
//       ),
//     );
//   }
// }

// class CupertinoAppHomePage extends StatelessWidget {
//   const CupertinoAppHomePage({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoApp(
//       debugShowCheckedModeBanner: false,
//       home: LoginScreen(),
//     );
//   }
// }


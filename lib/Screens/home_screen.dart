import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:my_assistant/utils/device_utils.dart';
import 'package:my_assistant/models/appUser/appuser.dart';
// import 'package:my_assistant/service/global_service.dart';
// import 'package:my_assistant/service/prefrence_service.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    serializeJson();
  }

  // void loadData() {
  //   var pref = getIt<Prefrence>();
  //   pref.setString("name_key", "karthik is testing with flutter and it works great");
  //   String name = pref.getString("name_key");
  //   print(name);
  // }

  void serializeJson() {
//     final json = JSON.decode('{ "firstname" : "John", "lastname" : "Doe", "company" : { "name": "Awesome Inc." } }');
// Customer customer = new Customer.fromJson(map);

    var json = {
    "status": "ACTIVE",
    "login": "karthik.samy@a-cti.com",
    "id": "155a66a7-3cf8-4314-bebc-9b21e56edeb9",
    "accountId": "SEN42",
    "lastName": "Samy",
    "firstName": "Karthik",
    "photoId": "http://lh3.googleusercontent.com/KtcvpjSBv3n0vhsHfJMA8cWpwRsTjz2yuu03xGiYm0CsOylO-Nu-4ZPSvKph84Gu4oWMzwNMMBcQdSxe68ZugqCbjAO5Xw"
    };

    var appuser = AppUser.fromJson(json);
    print(appuser.fullName());
  }

  @override
  Widget build(BuildContext context) {
    if (isIos) {
      return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text("Home"),
          ),
          child: Center(
            child: Text("Home Page"),
          ));
    } else {
      return Scaffold(
        body: Center(
          child: Text("Home Page"),
        ),
      );
    }
  }
}

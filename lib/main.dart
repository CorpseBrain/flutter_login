import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'login_page.dart';
import 'signup_page.dart';
import 'home_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new LoginPage(),
      routes: <String, WidgetBuilder>{
        '/home_page': (BuildContext context) => new DashboardPage(),
        '/login_page': (BuildContext context) => new MyApp(),
        '/signup_page': (BuildContext context) => new SignupPage()
      },
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final FirebaseMessaging _messaging = FirebaseMessaging();

  @override
  void initState() {
    super.initState();

    _messaging.getToken().then((token) {
      print(token);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

  

}
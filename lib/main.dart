import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'launcher/launcher_view.dart';
import 'package:inpnuanggota/constant.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

   final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
     LauncherPage.tag: (context) => LauncherPage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ARO BANK',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
        primaryColor: AroPalette.green,
        accentColor: AroPalette.green,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}



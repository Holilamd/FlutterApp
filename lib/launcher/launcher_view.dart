import 'package:flutter/material.dart';
import 'dart:async';
import 'package:inpnuanggota/landing/landingpage_view.dart';
class LauncherPage  extends StatefulWidget {
  static String tag = 'Launcher-Page';
  @override
  _LauncherPageState createState()  =>_LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage>{
  @override

  void initState(){
    super.initState();
    startLaunching();
  }

  startLaunching() async{
    var duration = const Duration(seconds: 1);
    return new Timer(duration,(){
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_){
        return new LandingPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Center(
        child: new Image.asset(
          "assets/homeLogo1.png",
          height: 100.0,
          width: 200.0,
        ),
      ),
    );
  }

}
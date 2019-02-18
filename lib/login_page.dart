import 'package:flutter/material.dart';
 import 'package:inpnuanggota/home_page.dart';
 import 'package:inpnuanggota/launcher/launcher_view.dart';

class LoginPage extends StatefulWidget {
  static String tag ='login-page';
  @override
  _LoginPageState  createState() => new _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext content){
    final logo = Hero (
      tag : 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.lightBlue,
        radius: 50.0,
        child: Image.asset('assets/homeLogo1.png'),
      ),

    );
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'Arobank@aro.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final password = TextFormField(
      autofocus: false,
      initialValue: 'Password Anda',
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: (){
            Navigator.of(context).pushNamed(LauncherPage.tag);
          },
         color: Colors.lightBlueAccent,
          child: Text('Log In',style: TextStyle(color:Colors.black)),
        ),
      ),
    );
    final forgotLabel = FlatButton(
      child: Text(
        'Forgot Password ?',
        style: TextStyle(color:Colors.black54),
      ),
      onPressed: (){
        Navigator.of(context).pushNamed(HomePage.tag);

      },
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0,right:24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 60.0),
            email,
            SizedBox(height: 12.0),
            password,
            SizedBox(height: 20.0),
            loginButton,
            forgotLabel
          ],
        ),
      ),
    );
  }
}
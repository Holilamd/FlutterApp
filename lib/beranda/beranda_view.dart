import 'package:flutter/material.dart';
import 'package:inpnuanggota/beranda/beranda_arobank_appbar.dart';
class BerandaPage extends StatefulWidget{
  @override
  _BerandaPageState createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: new ArobankAppBar() ,
        body: new Container(
          child: new ListView(
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(left: 16.0,right: 16.0,top: 16.0),
                color: Colors.white,
                child: new Column(
                  children: <Widget>[
                    _buildAropayMenu(),
                    _buildAroServiceMenu(),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
  Widget _buildAropayMenu(){
    return new Container(
      height: 240.0,
      decoration: new BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [const Color(0xff82f7ff), const Color(0xff00bcd4)],
        ),
        borderRadius: new BorderRadius.all(new Radius.circular(3.0))),
    child: new Column(
      children: <Widget>[
        new Container(
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [const Color(0xff00bcd4), const Color(0xff00bcd4)],
            ),
            borderRadius: new BorderRadius.only(
              topLeft: new Radius.circular(3.0),
              topRight: new Radius.circular(3.0))),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Text(
              "AROPAY",
              style: new TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontFamily: "NeoSansBold"),
            ),
            new Container(
              child: new Text(
                "Rp. 20.000.000",
                style: new TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                    fontFamily: "NeoSansBold"),
              ),
            )
          ],
        ),
        ),
        new Container(
          padding: EdgeInsets.only(left: 30.0,right: 32.0,top: 12.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Image.asset(
                    "assets/icon_transfer.png",
                    width: 32.0,
                    height: 32.0,
                  ),
                  new Padding(padding: EdgeInsets.only(top: 10.0),
                  ),
                  new Text(
                    "Transfer",
                    style: TextStyle(color: Colors.white,fontSize: 12.0),
                  )
                ],
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Image.asset(
                    "assets/icon_scan.png",
                    width: 32.0,
                    height: 32.0,
                  ),
                  new Padding(padding: EdgeInsets.only(top: 10.0),
                  ),
                  new Text(
                    "Scan QR",
                    style: TextStyle(color: Colors.white,fontSize: 12.0),
                  )
                ],
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Image.asset(
                    "assets/icon_saldo.png",
                    width: 32.0,
                    height: 32.0,
                  ),
                  new Padding(padding: EdgeInsets.only(top: 10.0),
                  ),
                  new Text(
                    "Isi Pulsa",
                    style: TextStyle(color: Colors.white,fontSize: 12.0),
                  )
                ],
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Image.asset(
                    "assets/icon_menu.png",
                    width: 32.0,
                    height: 32.0,
                  ),
                  new Padding(padding: EdgeInsets.only(top: 10.0),
                  ),
                  new Text(
                    "Lainnya",
                    style: TextStyle(color: Colors.white,fontSize: 12.0),
                  )

                ],
              ),
            ],
          ),
        ),
        new Container(
          padding: EdgeInsets.only(left: 30.0,right: 32.0,top: 12.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Image.asset(
                    "assets/icon_transfer.png",
                    width: 32.0,
                    height: 32.0,
                  ),
                  new Padding(padding: EdgeInsets.only(top: 10.0),
                  ),
                  new Text(
                    "Transfer",
                    style: TextStyle(color: Colors.white,fontSize: 12.0),
                  )
                ],
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Image.asset(
                    "assets/icon_scan.png",
                    width: 32.0,
                    height: 32.0,
                  ),
                  new Padding(padding: EdgeInsets.only(top: 10.0),
                  ),
                  new Text(
                    "Scan QR",
                    style: TextStyle(color: Colors.white,fontSize: 12.0),
                  )
                ],
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Image.asset(
                    "assets/icon_saldo.png",
                    width: 32.0,
                    height: 32.0,
                  ),
                  new Padding(padding: EdgeInsets.only(top: 10.0),
                  ),
                  new Text(
                    "Isi Pulsa",
                    style: TextStyle(color: Colors.white,fontSize: 12.0),
                  )
                ],
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Image.asset(
                    "assets/icon_menu.png",
                    width: 32.0,
                    height: 32.0,
                  ),
                  new Padding(padding: EdgeInsets.only(top: 10.0),
                  ),
                  new Text(
                    "Lainnya",
                    style: TextStyle(color: Colors.white,fontSize: 12.0),
                  )

                ],
              ),
            ],
          ),
        )
      ],
    ),
    );
  }
  Widget _buildAroServiceMenu(){
   return new SizedBox(
     width: double.infinity,
     height: 220.0,
     child: new Container(
       margin: EdgeInsets.only(top: 8.0,bottom: 8.0),
       child: GridView.builder(
         physics: ClampingScrollPhysics(),
         itemCount: 4,
         gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
         itemBuilder: (context,position){
           return new Text("Tex Menu");
         }
       )));
  }
}
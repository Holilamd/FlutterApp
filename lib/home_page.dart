import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context){
    final alucard = Hero(
      tag: 'herox',
      child: Padding(
        padding: EdgeInsets.all(16.0),
            child: new Row(
              //Digunakan agar widget mengisi ruang kosong pada layar
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Icon(Icons.account_balance_wallet, color: Colors.lightBlue, size: 40.0),
                    new Text('Saldo',style: TextStyle(color:Colors.black87)),
                  ],
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Icon(Icons.account_balance, color: Colors.lightBlue, size: 40.0),
                    new Text('Bank',style: TextStyle(color:Colors.black87)),
                  ],
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Icon(Icons.apps, color: Colors.lightBlue, size: 40.0),
                    new Text('Lainnya',style: TextStyle(color:Colors.black87)),
                  ],
                )

              ],
            ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome ',
        style: TextStyle(fontSize: 28.0,color: Colors.white),
      ),
    );
    
    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit condimentum mauris id tempor. Praesent eu commodo lacus. Praesent eget mi sed libero eleifend tempor. Sed at fringilla ipsum. Duis malesuada feugiat urna vitae convallis. Aliquam eu libero arcu.',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.grey,
          Colors.white,
        ]),
      ),

      child: Column(
        children: <Widget>[
          welcome,
          alucard, lorem,

        ],
      ),
    );
    return Scaffold(
      body: body,
    );
  }
}
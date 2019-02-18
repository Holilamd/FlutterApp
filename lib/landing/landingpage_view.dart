import 'package:flutter/material.dart';
import 'package:inpnuanggota/constant.dart';
import 'package:inpnuanggota/beranda/beranda_view.dart';
import 'package:inpnuanggota/home_page.dart';
class LandingPage  extends StatefulWidget{
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState  extends State<LandingPage> {
  int _bottomNavCurrentIndex   = 0;
  List<Widget> _container = [
    new BerandaPage(),
    new HomePage(),
    new HomePage(),
  ];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _container[_bottomNavCurrentIndex],
        bottomNavigationBar : _buildBottomNavigation()
    );
  }


  Widget  _buildBottomNavigation (){
    return new BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index){
        setState(() {
          _bottomNavCurrentIndex  = index;
        });
      },
      currentIndex: _bottomNavCurrentIndex ,
      items: [
        BottomNavigationBarItem(
            activeIcon : new Icon(
              Icons.home,
              color: AroPalette.green,
            ),
          icon: new Icon(
            Icons.home,
            color: Colors.grey,
          ),
          title: new Text(
            'Beranda',
          ),
        ),

        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.assignment,
            color: AroPalette.green,
          ),
          icon: new Icon(
            Icons.assignment,
            color: Colors.grey,
          ),
          title: new Text('Pengajuan'),
        ),
        BottomNavigationBarItem(
          activeIcon:  new Icon(
            Icons.mail,
            color: AroPalette.green,
          ),
          icon: new Icon(
            Icons.mail,
            color: Colors.grey,
          ),
          title: new Text('Inbox')
        ),
        BottomNavigationBarItem(
          activeIcon:  new Icon(
            Icons.person,
            color: AroPalette.green,
          ),
          icon:  new Icon(
            Icons.person,
            color: Colors.grey,
          ),
          title: new Text('Akun'),
        ),
      ],
    );
  }

}
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: null,
          accountEmail: null,
          currentAccountPicture: null,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/bg_account_switcher.png'))),
        ),
        ListTile(
            title: Text('首页', style: TextStyle(color: Colors.blue[500], fontSize: 16.0,fontWeight: FontWeight.w500),
            ),
            leading: ImageIcon(
              AssetImage('assets/images/quantum_ic_home_black_24.png'),
              color: Colors.blue[500],
            ),
            onTap: () {}),
        ListTile(
            title: Text('翻译收藏夹', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500)),
            leading: ImageIcon(
              AssetImage('assets/images/quantum_ic_stars_black_24.png'),
              color: Colors.blue[500],
            ),
            onTap: () {}),
        ListTile(
            title: Text('离线翻译', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500)),
            leading: ImageIcon(
              AssetImage('assets/images/quantum_ic_offline_pin_black_24.png'),
              color: Colors.blue[500],
            ),
            onTap: () {}),
        ListTile(
            title: Text('设置', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500)),
            leading: ImageIcon(
              AssetImage('assets/images/quantum_ic_settings_black_24.png'),
              color: Colors.blue[500],
            ),
            onTap: () {}),
      ],
    ));
  }
}

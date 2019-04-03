import 'package:flutter/material.dart';
import 'package:flutter_ttt/pager/bodyPager.dart';
import 'package:flutter_ttt/pager/drawerPager.dart';
import 'package:flutter_ttt/pager/recoding_page_list.dart';
import 'package:flutter_ttt/pager/textfitePager.dart';

class IndexPage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("谷歌翻译"),
          elevation: 0.0,
        ),

        body: Column(
          children: <Widget>[
            IndexBody(),
            TextFite(),
            Container(height: 10.0),
            RecodingTranslate()
          ],
        ),
        drawer: DrawerPage(),
      ),
    );
  }
}


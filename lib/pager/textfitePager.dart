import 'package:flutter/material.dart';
import 'package:flutter_ttt/pager/iconfitePager.dart';

class TextFite extends StatefulWidget {
  @override
  _TextFiteState createState() => _TextFiteState();
}

class _TextFiteState extends State<TextFite> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(0.0),
      child: Container(
        height: 170.0,
        child: Column(
          children: <Widget>[
            TextDemo(),
            IconDemo(),

          ],
        ),
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height,
        //获取上级容器高度
        padding:
            EdgeInsets.only(left: 18.0, top: 2.0, right: 18.0, bottom: 20.0),
        //设置内边距
        child: TextField(
          decoration:
              InputDecoration(border: InputBorder.none, hintText: '点按即可输入文本'),
          style: TextStyle(color: Colors.black, fontSize: 25.0),
          maxLines: 999,
          cursorColor: Colors.grey[500],
          cursorWidth: 2.0,
        ),
      ),
    );
  }
}

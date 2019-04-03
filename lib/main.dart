import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ttt/animation/openanimation.dart';

void main() {
//  debugPaintSizeEnabled = true;      //打开视觉调试开关
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "谷歌翻译",
      theme: ThemeData(
        primaryColor:Colors.blue[600],
        primarySwatch: Colors.blue,
      ),
      home: OpenAnimation(),
    );
  }
}

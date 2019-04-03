import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class IconDemo extends StatefulWidget {
  @override
  _IconDemoState createState() => _IconDemoState();
}

class _IconDemoState extends State<IconDemo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(width: 10.0),
        ActionButton(title: '相机', iconData: Icons.camera_alt ),
        ActionButton(title: '手写', iconData: Icons.touch_app),
        ActionButton(title: '对话', assetImage: AssetImage('assets/images/ic_double_mic_24dp.png')),
        ActionButton(title: '录音', iconData: Icons.keyboard_voice ),
        Container(width: 10.0),
      ],
    );
  }
}


/*
 * String title
 * IconData iconData
 * AssetImage assetImage
 */
class ActionButton extends StatefulWidget {

  final String title;
  final IconData iconData;
  final AssetImage assetImage;

  ActionButton({Key, key, @required this.title, this.iconData, this.assetImage})
      : super(key: key);


  @override
  _ActionButtonState createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      padding: EdgeInsets.only(left: 10.0, top: 2.0, right: 10.0, bottom: 2.0),
      child: Column(
        children: <Widget>[
          _displayIcon(),
          Text(
            widget.title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12.0,
            ),)
        ],
      ),
    );
  }

  Widget _displayIcon() {
    if (widget.iconData != null) {
      return Icon(
        widget.iconData,
        color: Color(0xff3F51B5),
        size: 25.0,
      );
    }else if(widget.assetImage!=null){
      return ImageIcon(
        widget.assetImage,
        color: Color(0xff3F51B5),
        size: 25.0,
      );
    }else{return Container();}
  }
}


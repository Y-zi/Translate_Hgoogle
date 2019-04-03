import 'package:flutter/material.dart';

Color primaryClor = Colors.blue;

class IndexBody extends StatefulWidget {
  _IndexBodyState createState() => _IndexBodyState();
}

class _IndexBodyState extends State<IndexBody> {
  String _firstlanguage = '英文';
  String _senconlanguage = '中文（简体）';

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 55.0,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              bottom: BorderSide(
            width: 0.5,
            color: Colors.grey[500],
          ))),
      child: Row(

        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Material(
              color: Colors.white,
              child: InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      this._firstlanguage,
                      style: TextStyle(color: primaryClor, fontSize: 18),
                    ),
                    ImageIcon(
                      AssetImage('assets/images/spinner_blue.9.png'),
                      color: primaryClor,
                    )
                  ],
                ),
              ),
            ),
          ),
          Material(
            color: Colors.white,
            child: Icon(
              Icons.swap_horiz,
              color: Colors.blue[500],
            ),
          ),
          Expanded(
            child: Material(
              color: Colors.white,
              child: InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      this._senconlanguage,
                      style: TextStyle(color: primaryClor, fontSize: 18),
                    ),
                    ImageIcon(
                      AssetImage('assets/images/spinner_blue.9.png'),
                      color: primaryClor,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

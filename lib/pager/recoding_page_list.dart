import 'package:flutter/material.dart';
import 'package:flutter_ttt/const/const_page.dart';

class RecodingTranslate extends StatefulWidget {
  @override
  _RecodingTranslateState createState() => _RecodingTranslateState();
}

class _RecodingTranslateState extends State<RecodingTranslate> {
  List<Translater> _list = [
    Translater('12321', 'stubt', true),
    Translater('1231231', 'stubt', false),
    Translater('1231231231231242343q566546352123', 'stubt', true),
    Translater('123', 'stubsafsgderwrqrererwadfertyuyjtrewtwresytdutydryetwrqrew', false),
    Translater('12321', 'stubt', true),
    Translater('1231231', 'stubt', false),
    Translater('1231231231231242343q566546352123', 'stubt', true),
    Translater('123', 'stubsafsgderwrqrererwadfertyuyjtrewtaesfdghhwwasewaefrerqyrt', false),
    Translater('12321', 'stubt', true),
    Translater('1231231', 'stubt', false),
    Translater('1231231231231242343q566546352123', 'stubt', true),
    Translater('123', 'stubsafsgderwrqrererwadfertyuyjtrewtwresytdutydryetwrqrew', false),
    Translater('12321', 'stubt', true),
    Translater('1231231', 'stubt', false),
    Translater('1231231231231242343q566546352123', 'stubt', true),
    Translater('123', 'stubsafsgderwrqrererwadfertyuyjtrewtaesfdghhwwasewaefrerqyrt', false),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        //设置滑动方向 Axis.horizontal 水平  默认 Axis.vertical 垂直
        scrollDirection: Axis.vertical,
        //内间距
//        padding: EdgeInsets.all(10.0),
        //是否倒序显示 默认正序 false  倒序true
        reverse: false,
        //false，如果内容不足，则用户无法滚动 而如果[primary]为true，它们总是可以尝试滚动。
        primary: false,
        //确定每一个item的高度 会让item加载更加高效
//        itemExtent: 50.0,
        //内容适配
        shrinkWrap: true,
        //item 数量
//          itemCount: list.length,
        //滑动类型设置
        physics: new ClampingScrollPhysics(),
        //cacheExtent  设置预加载的区域
        cacheExtent: 30.0,
        //滑动监听
//        controller ,

        itemCount: _list.length,
        itemBuilder: (context, index) {
          return _displayList(index);
        },
      ),
    );
  }

  Widget _displayList(int index) {
    return Container(
      padding: EdgeInsets.only(left: 2.0, right: 2.0, bottom: 2.0),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(0.0))),
        margin: EdgeInsets.only(left: 8.0, right: 8.0),
        child: Container(
          height: 80.0,
          padding: EdgeInsets.only(left: 18.0, top: 15.0, bottom: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                //柔性。。。
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      _list[index].title,
                      style: Theme.of(context).textTheme.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    //只显示一行 多余省略

                    Text(
                      _list[index].suBtitle,
                      style: Theme.of(context).textTheme.subhead,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  _list[index].isColletion ? Icons.star : Icons.star_border,
                  //三元
                  size: 25.0,
                  color: _list[index].isColletion
                      ? Colors.yellow[600]
                      : Colors.grey[600],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

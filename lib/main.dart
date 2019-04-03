//// Step 7 (Final): Change the app's theme
//
//import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
//
//void main() => runApp(new MyApp());
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: '我的flutter',
//      theme: new ThemeData(
//        primaryColor: Colors.white,
//      ),
//      home: new RandomWords(),
//    );
//  }
//}
//
//class RandomWords extends StatefulWidget {
//  @override
//  createState() => new RandomWordsState();
//}
//class RandomWordsState extends State<RandomWords> {
//  final _suggestions = <WordPair>[];
//
//  final _saved = new Set<WordPair>();
//
//  final _biggerFont = const TextStyle(fontSize: 18.0);
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('我的第一个flutter'),
//        actions: <Widget>[
//          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved)
//        ],
//      ),
//      body: _buildSuggestions(),
//    );
//  }
//  Widget _buildSuggestions() {
//    return new ListView.builder(
//      padding: const EdgeInsets.all(16.0),
//      itemBuilder: (context, i) {
//        if (i.isOdd) return new Divider();
//
//        final index = i ~/ 2;
//        if (index >= _suggestions.length) {
//          _suggestions.addAll(generateWordPairs().take(20));
//        }
//        return _buildRow(_suggestions[index]);
//      },
//    );
//  }
//
//  Widget _buildRow(WordPair pair) {
//    final alreadySaved = _saved.contains(pair);
//    return new ListTile(
//      title: new Text(
//        pair.asPascalCase,
//        style: _biggerFont,
//      ),
//      trailing: new Icon(
//        alreadySaved ? Icons.favorite : Icons.favorite_border,
//        color: alreadySaved ? Colors.red : null,
//      ),
//      onTap: () {
//        setState(
//              () {
//            if (alreadySaved) {
//              _saved.remove(pair);
//            } else {
//              _saved.add(pair);
//            }
//          },
//        );
//      },
//    );
//  }
////启动慢白屏时间长
//  void _pushSaved() {
//    Navigator.of(context).push(
//      new MaterialPageRoute(
//        builder: (context) {
//          final tiles = _saved.map(
//                (pair) {
//              return new ListTile(
//                title: new Text(
//                  pair.asPascalCase,
//                  style: _biggerFont,
//                ),
//              );
//            },
//          );
//          final divided = ListTile
//              .divideTiles(
//            context: context,
//            tiles: tiles,
//          )
//              .toList();
////AsyncTask和IntentService
//          return new Scaffold(
//            appBar: new AppBar(
//              title: new Text('路由目标页面'),
//            ),
//            body: new ListView(children: divided),
//          );
//        },
//      ),
//    );
//  }
//}
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled; //可视布局调整
import 'package:flutter/material.dart';
import 'package:flutte/sample_page.dart';

void main() {
//  debugPaintSizeEnabled = true;      //打开视觉调试开关
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      body: new Center(
        child: new Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new SamplePage()));
              },
              child: new Text(
                "点击我跳转到Sample页面",
                style: new TextStyle(fontSize: 26.0, color: Colors.red),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

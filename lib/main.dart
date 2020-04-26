import 'package:fish_redux_demo/page/fixleaked/page.dart';
import 'package:fish_redux_demo/page/mock_leaked_demo.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FishReduxDemo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'FishReduxDemo'),
      routes: {
        '/page/mockLeakedPage': (_) => MockLeakedPage(),
        '/page/fixLeakedPage': (_) => FixLeakedPage().buildPage(null),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    Navigator.pushNamed(context, '/page/mockLeakedPage');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '点击跳转mockLeakedPage',
            ),
            RaisedButton(
              child: Text('跳转 FishRedux FixLeaked 页面'),
              onPressed: () {
                Navigator.pushNamed(context, '/page/fixLeakedPage');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'GoToMockLeakedPage',
        child: Icon(Icons.more_horiz),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

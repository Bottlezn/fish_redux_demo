import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MockLeakedPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MockLeakedState();
}

class _MockLeakedState extends State<MockLeakedPage> {
  String _content = "MockLeakedPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '模拟泄漏',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment(0, 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              _content,
              style: TextStyle(fontSize: 16),
            ),
            RaisedButton(
              child: Text('调用异步函数'),
              onPressed: () {
                Timer(Duration(seconds: 3), () {
                  _content = '3秒延时已到';
                  setState(() {});
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

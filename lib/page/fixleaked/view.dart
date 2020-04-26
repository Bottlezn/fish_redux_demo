import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

import 'action.dart';
import 'state.dart';

Widget buildView(FixLeakedState state, Dispatch dispatch, ViewService viewService) {
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
            state.content,
            style: TextStyle(fontSize: 16),
          ),
          RaisedButton(
            child: Text('调用异步函数'),
            onPressed: () {
              dispatch(FixLeakedActionCreator.delay());
            },
          )
        ],
      ),
    ),
  );
}

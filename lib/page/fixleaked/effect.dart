import 'dart:async';

import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<FixLeakedState> buildEffect() {
  return combineEffects(<Object, Effect<FixLeakedState>>{
    FixLeakedAction.delay: _delay,
  });
}

void _delay(Action action, Context<FixLeakedState> ctx) {
  println("模拟耗时操作");
  Timer(Duration(seconds: 3), () {
    println("耗时操作结束");
    ctx.dispatch(FixLeakedActionCreator.modifyContent('耗时操作结束'));
  });
}

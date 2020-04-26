import 'package:fish_redux/fish_redux.dart';

enum FixLeakedAction {
  delay,
  modifyContent,
}

class FixLeakedActionCreator {

  ///创建 delay action，模拟耗时任务
  static Action delay() {
    return const Action(FixLeakedAction.delay);
  }

  ///创建修改 content 的 action
  static Action modifyContent(String content) {
    return Action(FixLeakedAction.modifyContent, payload: content);
  }
}

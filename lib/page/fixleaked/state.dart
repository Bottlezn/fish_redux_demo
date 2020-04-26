import 'package:fish_redux/fish_redux.dart';

class FixLeakedState implements Cloneable<FixLeakedState> {
  String content;

  @override
  FixLeakedState clone() {
    return FixLeakedState()..content = this.content;
  }
}

FixLeakedState initState(Map<String, dynamic> args) {
  return FixLeakedState()..content = "MockLeakedPage";
}

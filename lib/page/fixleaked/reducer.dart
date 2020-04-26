import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<FixLeakedState> buildReducer() {
  return asReducer(
    <Object, Reducer<FixLeakedState>>{
      FixLeakedAction.modifyContent: _modifyContent,
    },
  );
}

FixLeakedState _modifyContent(FixLeakedState state, Action action) {
  return state.clone()..content = action.payload;
}

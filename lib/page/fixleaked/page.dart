import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class FixLeakedPage extends Page<FixLeakedState, Map<String, dynamic>> {
  FixLeakedPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<FixLeakedState>(
                adapter: null,
                slots: <String, Dependent<FixLeakedState>>{
                }),
            middleware: <Middleware<FixLeakedState>>[
            ],);

}

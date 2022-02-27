import 'package:async_redux/async_redux.dart';
import 'package:flutter/widgets.dart';
import 'package:rubis_card_clone/application%20/redux/state/app_state.dart';

class UpdatePageViewAction extends ReduxAction<AppState> {
  UpdatePageViewAction({
    this.pageIndex,
  });

  final int? pageIndex;

  @override
  AppState? reduce() {
    return state.copyWith.call(
      cardPageController: PageController(
        initialPage: pageIndex ?? state.cardPageController!.initialPage,
      ),
    );
  }
}

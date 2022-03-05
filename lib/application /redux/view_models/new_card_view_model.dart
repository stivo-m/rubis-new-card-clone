// Package imports:
import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:rubis_card_clone/application%20/redux/state/app_state.dart';
import 'package:rubis_card_clone/domain/enums.dart';

class NewCardViewModel {
  final CardInformationStage stage;
  final PageController? pageController;
  NewCardViewModel({
    required this.stage,
    required this.pageController,
  });

  static NewCardViewModel fromStore(Store<AppState> store) {
    return NewCardViewModel(
        stage: store.state.cardInformationStage!,
        pageController: store.state.cardPageController);
  }
}

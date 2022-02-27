import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:rubis_card_clone/application%20/redux/state/app_state.dart';

class ChangeTheme extends ReduxAction<AppState> {
  ChangeTheme({required this.themeMode});

  final ThemeMode themeMode;

  @override
  AppState? reduce() {
    return state.copyWith.call(themeMode: themeMode);
  }
}

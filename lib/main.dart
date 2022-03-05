import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:rubis_card_clone/application%20/redux/state/app_state.dart';
import 'package:rubis_card_clone/presentation/app/pages/new_card/card_application_page.dart';
import 'package:rubis_card_clone/presentation/theme/custom_theme.dart';

void main() {
  final Store<AppState> store = Store<AppState>(
    initialState: AppState.initial(),
  );
  runApp(
    MyApp(
      store: store,
    ),
  );
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;
  const MyApp({
    Key? key,
    required this.store,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Rubis new card request clone',
        themeMode: store.state.themeMode,
        theme: CustomTheme.lightTheme(),
        darkTheme: CustomTheme.darkTheme(),
        home: CardApplicationPage(),
      ),
    );
  }
}

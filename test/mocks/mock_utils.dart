import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rubis_card_clone/application%20/redux/state/app_state.dart';

const String testEmail = 'test@email.com';
const String testFirstName = 'John';
const String testLastName = 'Doe';
const String validPhoneNumber = '+254712345678';
const String invalidPhoneNumber = '494889557123456789';

Future<void> buildTestWidget({
  required WidgetTester tester,
  required Widget child,
  Store<AppState>? store,
}) async {
  store ??= Store<AppState>(initialState: AppState.initial());
  return await tester.pumpWidget(
    StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        home: Scaffold(body: child),
      ),
    ),
  );
}

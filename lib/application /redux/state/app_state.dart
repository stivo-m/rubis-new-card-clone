import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rubis_card_clone/domain/core/entities/card_information.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    CardInformation? cardInformation,
    ThemeMode? themeMode,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);

  factory AppState.initial() => AppState(
        cardInformation: CardInformation.initial(),
        themeMode: ThemeMode.system,
      );
}

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rubis_card_clone/domain/core/entities/card_information.dart';
import 'package:rubis_card_clone/domain/enums.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    CardInformation? cardInformation,
    CardInformationStage? cardInformationStage,
    @JsonKey(ignore: true) PageController? cardPageController,
    ThemeMode? themeMode,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);

  factory AppState.initial() => AppState(
        cardInformation: CardInformation.initial(),
        cardInformationStage: CardInformationStage.collectingBioInformation,
        cardPageController: PageController(initialPage: 0),
        themeMode: ThemeMode.system,
      );
}

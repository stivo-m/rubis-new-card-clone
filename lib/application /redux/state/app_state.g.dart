// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppState _$$_AppStateFromJson(Map<String, dynamic> json) => _$_AppState(
      cardInformation: json['cardInformation'] == null
          ? null
          : CardInformation.fromJson(
              json['cardInformation'] as Map<String, dynamic>),
      cardInformationStage: $enumDecodeNullable(
          _$CardInformationStageEnumMap, json['cardInformationStage']),
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']),
    );

Map<String, dynamic> _$$_AppStateToJson(_$_AppState instance) =>
    <String, dynamic>{
      'cardInformation': instance.cardInformation,
      'cardInformationStage':
          _$CardInformationStageEnumMap[instance.cardInformationStage],
      'themeMode': _$ThemeModeEnumMap[instance.themeMode],
    };

const _$CardInformationStageEnumMap = {
  CardInformationStage.collectingBioInformation: 'collectingBioInformation',
  CardInformationStage.collectingUsageInformation: 'collectingUsageInformation',
  CardInformationStage.collectingPickupLocation: 'collectingPickupLocation',
  CardInformationStage.confirmation: 'confirmation',
  CardInformationStage.validateOTP: 'validateOTP',
};

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};

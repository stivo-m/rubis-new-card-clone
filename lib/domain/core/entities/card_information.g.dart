// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardInformation _$$_CardInformationFromJson(Map<String, dynamic> json) =>
    _$_CardInformation(
      userInformation: json['userInformation'] == null
          ? null
          : UserInformation.fromJson(
              json['userInformation'] as Map<String, dynamic>),
      usageInformation: json['usageInformation'] == null
          ? null
          : CardUsageInformation.fromJson(
              json['usageInformation'] as Map<String, dynamic>),
      pickUpLocation: json['pickUpLocation'] == null
          ? null
          : CardPickUpLocation.fromJson(
              json['pickUpLocation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CardInformationToJson(_$_CardInformation instance) =>
    <String, dynamic>{
      'userInformation': instance.userInformation,
      'usageInformation': instance.usageInformation,
      'pickUpLocation': instance.pickUpLocation,
    };

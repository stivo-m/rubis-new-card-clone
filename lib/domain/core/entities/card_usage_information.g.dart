// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_usage_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardUsageInformation _$$_CardUsageInformationFromJson(
        Map<String, dynamic> json) =>
    _$_CardUsageInformation(
      productRestrictions: (json['productRestrictions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      authorizedZonesOfUse: (json['authorizedZonesOfUse'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      daysOfUse: (json['daysOfUse'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      promoCode: json['promoCode'] as String?,
      shouldSendSMSAlerts: json['shouldSendSMSAlerts'] as bool?,
      shouldReportMilage: json['shouldReportMilage'] as bool?,
      shouldCaptureDriverCode: json['shouldCaptureDriverCode'] as bool?,
    );

Map<String, dynamic> _$$_CardUsageInformationToJson(
        _$_CardUsageInformation instance) =>
    <String, dynamic>{
      'productRestrictions': instance.productRestrictions,
      'authorizedZonesOfUse': instance.authorizedZonesOfUse,
      'daysOfUse': instance.daysOfUse,
      'promoCode': instance.promoCode,
      'shouldSendSMSAlerts': instance.shouldSendSMSAlerts,
      'shouldReportMilage': instance.shouldReportMilage,
      'shouldCaptureDriverCode': instance.shouldCaptureDriverCode,
    };

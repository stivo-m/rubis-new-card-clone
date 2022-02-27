import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_usage_information.freezed.dart';
part 'card_usage_information.g.dart';

@freezed
class CardUsageInformation with _$CardUsageInformation {
  factory CardUsageInformation({
    List<String>? productRestrictions,
    List<String>? authorizedZonesOfUse,
    List<String>? daysOfUse,
    String? promoCode,
    bool? shouldSendSMSAlerts,
    bool? shouldReportMilage,
    bool? shouldCaptureDriverCode,
  }) = _CardUsageInformation;

  factory CardUsageInformation.fromJson(Map<String, dynamic> json) =>
      _$CardUsageInformationFromJson(json);

  factory CardUsageInformation.initial() => CardUsageInformation(
        authorizedZonesOfUse: null,
        daysOfUse: null,
        productRestrictions: null,
        promoCode: null,
        shouldCaptureDriverCode: null,
        shouldReportMilage: null,
        shouldSendSMSAlerts: null,
      );
}

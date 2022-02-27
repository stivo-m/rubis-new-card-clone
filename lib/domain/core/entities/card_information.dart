import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rubis_card_clone/domain/core/entities/card_pickup_location.dart';
import 'package:rubis_card_clone/domain/core/entities/card_usage_information.dart';
import 'package:rubis_card_clone/domain/core/entities/user_information.dart';

part 'card_information.freezed.dart';
part 'card_information.g.dart';

@freezed
class CardInformation with _$CardInformation {
  factory CardInformation({
    UserInformation? userInformation,
    CardUsageInformation? usageInformation,
    CardPickUpLocation? pickUpLocation,
  }) = _CardInformation;

  factory CardInformation.fromJson(Map<String, dynamic> json) =>
      _$CardInformationFromJson(json);

  factory CardInformation.initial() => CardInformation(
        pickUpLocation: CardPickUpLocation.initial(),
        usageInformation: CardUsageInformation.initial(),
        userInformation: UserInformation.initial(),
      );
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_pickup_location.freezed.dart';
part 'card_pickup_location.g.dart';

@freezed
class CardPickUpLocation with _$CardPickUpLocation {
  factory CardPickUpLocation({
    String? county,
    String? region,
  }) = _CardPickUpLocation;

  factory CardPickUpLocation.fromJson(Map<String, dynamic> json) =>
      _$CardPickUpLocationFromJson(json);

  factory CardPickUpLocation.initial() => CardPickUpLocation(
        county: null,
        region: null,
      );
}

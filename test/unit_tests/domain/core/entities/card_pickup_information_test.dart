import 'package:flutter_test/flutter_test.dart';
import 'package:rubis_card_clone/domain/core/entities/card_pickup_location.dart';

void main() {
  group('CardPickUpLocation', () {
    test('should have initial state', () {
      final CardPickUpLocation cardPickUpLocation =
          CardPickUpLocation.initial();

      expect(cardPickUpLocation.county, null);
    });

    test('should convert to json', () {
      final CardPickUpLocation cardPickUpLocation = CardPickUpLocation(
        county: 'nairobi',
      );

      final Map<String, dynamic> _json = cardPickUpLocation.toJson();

      expect(cardPickUpLocation.county, isNotNull);
      expect(_json, isNotNull);
      expect(_json['county'], 'nairobi');
    });

    test('should convert from json', () {
      final CardPickUpLocation cardPickUpLocation = CardPickUpLocation(
        county: 'nairobi',
      );

      final Map<String, dynamic> _json = cardPickUpLocation.toJson();

      expect(cardPickUpLocation.county, isNotNull);
      expect(_json, isNotNull);
      expect(_json['county'], 'nairobi');

      final CardPickUpLocation cardInfo = CardPickUpLocation.fromJson(_json);

      expect(cardInfo.county, isNotNull);
      expect(cardInfo.county, 'nairobi');
    });
  });
}

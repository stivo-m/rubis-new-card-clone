import 'package:flutter_test/flutter_test.dart';
import 'package:rubis_card_clone/domain/core/entities/card_information.dart';
import 'package:rubis_card_clone/domain/core/entities/card_pickup_location.dart';

void main() {
  group('CardInformation', () {
    test('should have default state', () {
      final CardInformation information = CardInformation.initial();

      expect(information.pickUpLocation, CardPickUpLocation.initial());
    });

    test('should convert to json', () {
      final CardInformation information = CardInformation.initial();
      final Map<String, dynamic> map = information.toJson();

      expect(map, isNotNull);
    });
  });
}

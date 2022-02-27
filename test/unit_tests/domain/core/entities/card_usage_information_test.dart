import 'package:flutter_test/flutter_test.dart';
import 'package:rubis_card_clone/domain/core/entities/card_usage_information.dart';

void main() {
  group('CardUsageInformation', () {
    test('should have initial state', () {
      final CardUsageInformation cardUsageInformation =
          CardUsageInformation.initial();

      expect(cardUsageInformation.authorizedZonesOfUse, null);
    });

    test('should convert to json', () {
      final CardUsageInformation cardUsageInformation = CardUsageInformation(
        daysOfUse: <String>['monday', 'friday'],
      );

      final Map<String, dynamic> _json = cardUsageInformation.toJson();

      expect(cardUsageInformation.daysOfUse, isNotNull);
      expect(_json, isNotNull);
      expect(_json['daysOfUse'], <String>['monday', 'friday']);
    });

    test('should convert from json', () {
      final CardUsageInformation cardUsageInformation = CardUsageInformation(
        daysOfUse: <String>['monday', 'friday'],
      );

      final Map<String, dynamic> _json = cardUsageInformation.toJson();

      expect(cardUsageInformation.daysOfUse, isNotNull);
      expect(_json, isNotNull);
      expect(_json['daysOfUse'], <String>['monday', 'friday']);

      final CardUsageInformation usageInformation =
          CardUsageInformation.fromJson(_json);

      expect(usageInformation.daysOfUse, isNotNull);
      expect(usageInformation.daysOfUse, <String>['monday', 'friday']);
    });
  });
}

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:rubis_card_clone/domain/core/objects/phone_number.dart';

import '../../../../mocks/mock_utils.dart';

void main() {
  group('PhoneNumber', () {
    test('should convert value to json', () {
      final PhoneNumber phoneNumber =
          PhoneNumber.withValue(input: validPhoneNumber);

      final Map<String, dynamic> _json = phoneNumber.toMap();

      expect(_json['phoneNumber'], phoneNumber.val);
    });

    test('should convert from to json', () {
      final Map<String, dynamic> _json = <String, dynamic>{
        'phoneNumber': validPhoneNumber,
      };

      final PhoneNumber phoneNumber = PhoneNumber.fromMap(_json);

      expect(_json['phoneNumber'], phoneNumber.val);
    });

    test('should convert json to string', () {
      final Map<String, dynamic> _json = <String, dynamic>{
        'phoneNumber': validPhoneNumber,
      };

      final PhoneNumber phoneNumber = PhoneNumber.fromMap(_json);

      expect(_json['phoneNumber'], phoneNumber.val);
      expect(json.encode(_json), phoneNumber.toJson());
    });

    test('should convert from json string', () {
      final Map<String, dynamic> _json = <String, dynamic>{
        'phoneNumber': validPhoneNumber,
      };

      final PhoneNumber phoneNumber = PhoneNumber.fromJson(json.encode(_json));

      expect(_json['phoneNumber'], phoneNumber.val);
      expect(json.encode(_json), phoneNumber.toJson());
    });
  });
}

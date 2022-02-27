import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:rubis_card_clone/domain/core/objects/name.dart';

import '../../../../mocks/mock_utils.dart';

void main() {
  group('Name', () {
    test('should convert value to json', () {
      final Name name = Name.withValue(input: testFirstName);

      final Map<String, dynamic> _json = name.toMap();

      expect(_json['name'], name.val);
    });

    test('should convert from to json', () {
      final Map<String, dynamic> _json = <String, dynamic>{
        'name': testFirstName,
      };

      final Name name = Name.fromMap(_json);

      expect(_json['name'], name.val);
    });

    test('should convert json to string', () {
      final Map<String, dynamic> _json = <String, dynamic>{
        'name': testFirstName,
      };

      final Name name = Name.fromMap(_json);

      expect(_json['name'], name.val);
      expect(json.encode(_json), name.toJson());
    });

    test('should convert from json string', () {
      final Map<String, dynamic> _json = <String, dynamic>{
        'name': testFirstName,
      };

      final Name name = Name.fromJson(json.encode(_json));

      expect(_json['name'], name.val);
      expect(json.encode(_json), name.toJson());
    });
  });
}

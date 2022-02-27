import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rubis_card_clone/domain/core/failures/value_failures.dart';
import 'package:rubis_card_clone/domain/core/validators/validators.dart';

import '../../../../mocks/mock_utils.dart';

void main() {
  group('ValidateEmail', () {
    test('should return left for invalid email', () {
      final String invalidEmail = 'test123';
      Either<ValueFailure<String>, String> result =
          validateEmailAddress(invalidEmail);

      expect(result.isLeft(), true);
    });

    test('should return right for valid email', () {
      Either<ValueFailure<String>, String> result =
          validateEmailAddress(testEmail);

      expect(result.isRight(), true);
    });
  });

  group('Validate Phone number', () {
    test('should return left for invalid phone number', () {
      Either<ValueFailure<String>, String> result =
          validatePhoneNumber(invalidPhoneNumber);

      expect(result.isLeft(), true);
    });

    test('should return right for valid kenyan phone number', () {
      Either<ValueFailure<String>, String> result =
          validatePhoneNumber(validPhoneNumber);

      expect(result.isRight(), true);
    });
  });

  group('Validate name', () {
    test('should return left for invalid name', () {
      Either<ValueFailure<String>, String> result = validateName('ff');

      expect(result.isLeft(), true);
    });

    test('should return right for valid name', () {
      Either<ValueFailure<String>, String> result = validateName(testFirstName);

      expect(result.isRight(), true);
    });
  });
}

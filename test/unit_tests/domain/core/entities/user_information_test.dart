import 'package:flutter_test/flutter_test.dart';
import 'package:rubis_card_clone/domain/core/entities/user_information.dart';
import 'package:rubis_card_clone/domain/core/objects/email_address.dart';
import 'package:rubis_card_clone/domain/core/objects/name.dart';
import 'package:rubis_card_clone/domain/core/objects/phone_number.dart';
import 'package:rubis_card_clone/domain/enums.dart';

import '../../../../mocks/mock_utils.dart';

void main() {
  group('UserInformation', () {
    test('should have initial state', () {
      final UserInformation information = UserInformation.initial();
      expect(information.cardHolderName, null);
      expect(information.emailAddress, null);
      expect(information.identificationNumber, null);
      expect(information.vehicleRegNumber, null);
      expect(information.phoneNumber, null);
    });

    test('should convert to json', () {
      final UserInformation information = UserInformation(
        cardHolderName: Name.withValue(input: testFirstName),
        emailAddress: EmailAddress.withValue(input: testEmail),
        identificationNumber: invalidPhoneNumber,
        phoneNumber: PhoneNumber.withValue(input: validPhoneNumber),
        identityType: IdentityType.nationalID,
        vehicleRegNumber: invalidPhoneNumber,
      );

      final Map<String, dynamic> json = information.toJson();

      expect(json, isA<Map<String, dynamic>>());
      expect(json, isNot(null));
      expect(json['identificationNumber'], invalidPhoneNumber);
    });

    test('should convert from json', () {
      final UserInformation information = UserInformation(
        identificationNumber: invalidPhoneNumber,
      );

      final Map<String, dynamic> json = information.toJson();

      final UserInformation data = UserInformation.fromJson(json);

      expect(data.identificationNumber, invalidPhoneNumber);
    });
  });
}

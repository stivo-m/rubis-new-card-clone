import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rubis_card_clone/domain/core/objects/email_address.dart';
import 'package:rubis_card_clone/domain/core/objects/name.dart';
import 'package:rubis_card_clone/domain/core/objects/phone_number.dart';
import 'package:rubis_card_clone/domain/enums.dart';

part 'user_information.freezed.dart';
part 'user_information.g.dart';

@freezed
class UserInformation with _$UserInformation {
  factory UserInformation({
    Name? cardHolderName,
    EmailAddress? emailAddress,
    PhoneNumber? phoneNumber,
    IdentityType? identityType,
    String? identificationNumber,
    String? vehicleRegNumber,
  }) = _UserInformation;

  factory UserInformation.fromJson(Map<String, dynamic> json) =>
      _$UserInformationFromJson(json);

  factory UserInformation.initial() => UserInformation(
        cardHolderName: null,
        emailAddress: null,
        identificationNumber: null,
        identityType: IdentityType.unknown,
        phoneNumber: null,
        vehicleRegNumber: null,
      );
}

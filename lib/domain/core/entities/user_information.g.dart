// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserInformation _$$_UserInformationFromJson(Map<String, dynamic> json) =>
    _$_UserInformation(
      cardHolderName: json['cardHolderName'] == null
          ? null
          : Name.fromJson(json['cardHolderName'] as String),
      emailAddress: json['emailAddress'] == null
          ? null
          : EmailAddress.fromJson(json['emailAddress'] as String),
      phoneNumber: json['phoneNumber'] == null
          ? null
          : PhoneNumber.fromJson(json['phoneNumber'] as String),
      identityType:
          $enumDecodeNullable(_$IdentityTypeEnumMap, json['identityType']),
      identificationNumber: json['identificationNumber'] as String?,
      vehicleRegNumber: json['vehicleRegNumber'] as String?,
    );

Map<String, dynamic> _$$_UserInformationToJson(_$_UserInformation instance) =>
    <String, dynamic>{
      'cardHolderName': instance.cardHolderName,
      'emailAddress': instance.emailAddress,
      'phoneNumber': instance.phoneNumber,
      'identityType': _$IdentityTypeEnumMap[instance.identityType],
      'identificationNumber': instance.identificationNumber,
      'vehicleRegNumber': instance.vehicleRegNumber,
    };

const _$IdentityTypeEnumMap = {
  IdentityType.nationalID: 'nationalID',
  IdentityType.passportID: 'passportID',
  IdentityType.unknown: 'unknown',
};

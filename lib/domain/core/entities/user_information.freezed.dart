// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserInformation _$UserInformationFromJson(Map<String, dynamic> json) {
  return _UserInformation.fromJson(json);
}

/// @nodoc
class _$UserInformationTearOff {
  const _$UserInformationTearOff();

  _UserInformation call(
      {Name? cardHolderName,
      EmailAddress? emailAddress,
      PhoneNumber? phoneNumber,
      IdentityType? identityType,
      String? identificationNumber,
      String? vehicleRegNumber}) {
    return _UserInformation(
      cardHolderName: cardHolderName,
      emailAddress: emailAddress,
      phoneNumber: phoneNumber,
      identityType: identityType,
      identificationNumber: identificationNumber,
      vehicleRegNumber: vehicleRegNumber,
    );
  }

  UserInformation fromJson(Map<String, Object?> json) {
    return UserInformation.fromJson(json);
  }
}

/// @nodoc
const $UserInformation = _$UserInformationTearOff();

/// @nodoc
mixin _$UserInformation {
  Name? get cardHolderName => throw _privateConstructorUsedError;
  EmailAddress? get emailAddress => throw _privateConstructorUsedError;
  PhoneNumber? get phoneNumber => throw _privateConstructorUsedError;
  IdentityType? get identityType => throw _privateConstructorUsedError;
  String? get identificationNumber => throw _privateConstructorUsedError;
  String? get vehicleRegNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInformationCopyWith<UserInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInformationCopyWith<$Res> {
  factory $UserInformationCopyWith(
          UserInformation value, $Res Function(UserInformation) then) =
      _$UserInformationCopyWithImpl<$Res>;
  $Res call(
      {Name? cardHolderName,
      EmailAddress? emailAddress,
      PhoneNumber? phoneNumber,
      IdentityType? identityType,
      String? identificationNumber,
      String? vehicleRegNumber});
}

/// @nodoc
class _$UserInformationCopyWithImpl<$Res>
    implements $UserInformationCopyWith<$Res> {
  _$UserInformationCopyWithImpl(this._value, this._then);

  final UserInformation _value;
  // ignore: unused_field
  final $Res Function(UserInformation) _then;

  @override
  $Res call({
    Object? cardHolderName = freezed,
    Object? emailAddress = freezed,
    Object? phoneNumber = freezed,
    Object? identityType = freezed,
    Object? identificationNumber = freezed,
    Object? vehicleRegNumber = freezed,
  }) {
    return _then(_value.copyWith(
      cardHolderName: cardHolderName == freezed
          ? _value.cardHolderName
          : cardHolderName // ignore: cast_nullable_to_non_nullable
              as Name?,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber?,
      identityType: identityType == freezed
          ? _value.identityType
          : identityType // ignore: cast_nullable_to_non_nullable
              as IdentityType?,
      identificationNumber: identificationNumber == freezed
          ? _value.identificationNumber
          : identificationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleRegNumber: vehicleRegNumber == freezed
          ? _value.vehicleRegNumber
          : vehicleRegNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserInformationCopyWith<$Res>
    implements $UserInformationCopyWith<$Res> {
  factory _$UserInformationCopyWith(
          _UserInformation value, $Res Function(_UserInformation) then) =
      __$UserInformationCopyWithImpl<$Res>;
  @override
  $Res call(
      {Name? cardHolderName,
      EmailAddress? emailAddress,
      PhoneNumber? phoneNumber,
      IdentityType? identityType,
      String? identificationNumber,
      String? vehicleRegNumber});
}

/// @nodoc
class __$UserInformationCopyWithImpl<$Res>
    extends _$UserInformationCopyWithImpl<$Res>
    implements _$UserInformationCopyWith<$Res> {
  __$UserInformationCopyWithImpl(
      _UserInformation _value, $Res Function(_UserInformation) _then)
      : super(_value, (v) => _then(v as _UserInformation));

  @override
  _UserInformation get _value => super._value as _UserInformation;

  @override
  $Res call({
    Object? cardHolderName = freezed,
    Object? emailAddress = freezed,
    Object? phoneNumber = freezed,
    Object? identityType = freezed,
    Object? identificationNumber = freezed,
    Object? vehicleRegNumber = freezed,
  }) {
    return _then(_UserInformation(
      cardHolderName: cardHolderName == freezed
          ? _value.cardHolderName
          : cardHolderName // ignore: cast_nullable_to_non_nullable
              as Name?,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber?,
      identityType: identityType == freezed
          ? _value.identityType
          : identityType // ignore: cast_nullable_to_non_nullable
              as IdentityType?,
      identificationNumber: identificationNumber == freezed
          ? _value.identificationNumber
          : identificationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleRegNumber: vehicleRegNumber == freezed
          ? _value.vehicleRegNumber
          : vehicleRegNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserInformation implements _UserInformation {
  _$_UserInformation(
      {this.cardHolderName,
      this.emailAddress,
      this.phoneNumber,
      this.identityType,
      this.identificationNumber,
      this.vehicleRegNumber});

  factory _$_UserInformation.fromJson(Map<String, dynamic> json) =>
      _$$_UserInformationFromJson(json);

  @override
  final Name? cardHolderName;
  @override
  final EmailAddress? emailAddress;
  @override
  final PhoneNumber? phoneNumber;
  @override
  final IdentityType? identityType;
  @override
  final String? identificationNumber;
  @override
  final String? vehicleRegNumber;

  @override
  String toString() {
    return 'UserInformation(cardHolderName: $cardHolderName, emailAddress: $emailAddress, phoneNumber: $phoneNumber, identityType: $identityType, identificationNumber: $identificationNumber, vehicleRegNumber: $vehicleRegNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserInformation &&
            const DeepCollectionEquality()
                .equals(other.cardHolderName, cardHolderName) &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.identityType, identityType) &&
            const DeepCollectionEquality()
                .equals(other.identificationNumber, identificationNumber) &&
            const DeepCollectionEquality()
                .equals(other.vehicleRegNumber, vehicleRegNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cardHolderName),
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(identityType),
      const DeepCollectionEquality().hash(identificationNumber),
      const DeepCollectionEquality().hash(vehicleRegNumber));

  @JsonKey(ignore: true)
  @override
  _$UserInformationCopyWith<_UserInformation> get copyWith =>
      __$UserInformationCopyWithImpl<_UserInformation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserInformationToJson(this);
  }
}

abstract class _UserInformation implements UserInformation {
  factory _UserInformation(
      {Name? cardHolderName,
      EmailAddress? emailAddress,
      PhoneNumber? phoneNumber,
      IdentityType? identityType,
      String? identificationNumber,
      String? vehicleRegNumber}) = _$_UserInformation;

  factory _UserInformation.fromJson(Map<String, dynamic> json) =
      _$_UserInformation.fromJson;

  @override
  Name? get cardHolderName;
  @override
  EmailAddress? get emailAddress;
  @override
  PhoneNumber? get phoneNumber;
  @override
  IdentityType? get identityType;
  @override
  String? get identificationNumber;
  @override
  String? get vehicleRegNumber;
  @override
  @JsonKey(ignore: true)
  _$UserInformationCopyWith<_UserInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

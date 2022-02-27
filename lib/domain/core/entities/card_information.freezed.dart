// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'card_information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardInformation _$CardInformationFromJson(Map<String, dynamic> json) {
  return _CardInformation.fromJson(json);
}

/// @nodoc
class _$CardInformationTearOff {
  const _$CardInformationTearOff();

  _CardInformation call(
      {UserInformation? userInformation,
      CardUsageInformation? usageInformation,
      CardPickUpLocation? pickUpLocation}) {
    return _CardInformation(
      userInformation: userInformation,
      usageInformation: usageInformation,
      pickUpLocation: pickUpLocation,
    );
  }

  CardInformation fromJson(Map<String, Object?> json) {
    return CardInformation.fromJson(json);
  }
}

/// @nodoc
const $CardInformation = _$CardInformationTearOff();

/// @nodoc
mixin _$CardInformation {
  UserInformation? get userInformation => throw _privateConstructorUsedError;
  CardUsageInformation? get usageInformation =>
      throw _privateConstructorUsedError;
  CardPickUpLocation? get pickUpLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardInformationCopyWith<CardInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardInformationCopyWith<$Res> {
  factory $CardInformationCopyWith(
          CardInformation value, $Res Function(CardInformation) then) =
      _$CardInformationCopyWithImpl<$Res>;
  $Res call(
      {UserInformation? userInformation,
      CardUsageInformation? usageInformation,
      CardPickUpLocation? pickUpLocation});

  $UserInformationCopyWith<$Res>? get userInformation;
  $CardUsageInformationCopyWith<$Res>? get usageInformation;
  $CardPickUpLocationCopyWith<$Res>? get pickUpLocation;
}

/// @nodoc
class _$CardInformationCopyWithImpl<$Res>
    implements $CardInformationCopyWith<$Res> {
  _$CardInformationCopyWithImpl(this._value, this._then);

  final CardInformation _value;
  // ignore: unused_field
  final $Res Function(CardInformation) _then;

  @override
  $Res call({
    Object? userInformation = freezed,
    Object? usageInformation = freezed,
    Object? pickUpLocation = freezed,
  }) {
    return _then(_value.copyWith(
      userInformation: userInformation == freezed
          ? _value.userInformation
          : userInformation // ignore: cast_nullable_to_non_nullable
              as UserInformation?,
      usageInformation: usageInformation == freezed
          ? _value.usageInformation
          : usageInformation // ignore: cast_nullable_to_non_nullable
              as CardUsageInformation?,
      pickUpLocation: pickUpLocation == freezed
          ? _value.pickUpLocation
          : pickUpLocation // ignore: cast_nullable_to_non_nullable
              as CardPickUpLocation?,
    ));
  }

  @override
  $UserInformationCopyWith<$Res>? get userInformation {
    if (_value.userInformation == null) {
      return null;
    }

    return $UserInformationCopyWith<$Res>(_value.userInformation!, (value) {
      return _then(_value.copyWith(userInformation: value));
    });
  }

  @override
  $CardUsageInformationCopyWith<$Res>? get usageInformation {
    if (_value.usageInformation == null) {
      return null;
    }

    return $CardUsageInformationCopyWith<$Res>(_value.usageInformation!,
        (value) {
      return _then(_value.copyWith(usageInformation: value));
    });
  }

  @override
  $CardPickUpLocationCopyWith<$Res>? get pickUpLocation {
    if (_value.pickUpLocation == null) {
      return null;
    }

    return $CardPickUpLocationCopyWith<$Res>(_value.pickUpLocation!, (value) {
      return _then(_value.copyWith(pickUpLocation: value));
    });
  }
}

/// @nodoc
abstract class _$CardInformationCopyWith<$Res>
    implements $CardInformationCopyWith<$Res> {
  factory _$CardInformationCopyWith(
          _CardInformation value, $Res Function(_CardInformation) then) =
      __$CardInformationCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserInformation? userInformation,
      CardUsageInformation? usageInformation,
      CardPickUpLocation? pickUpLocation});

  @override
  $UserInformationCopyWith<$Res>? get userInformation;
  @override
  $CardUsageInformationCopyWith<$Res>? get usageInformation;
  @override
  $CardPickUpLocationCopyWith<$Res>? get pickUpLocation;
}

/// @nodoc
class __$CardInformationCopyWithImpl<$Res>
    extends _$CardInformationCopyWithImpl<$Res>
    implements _$CardInformationCopyWith<$Res> {
  __$CardInformationCopyWithImpl(
      _CardInformation _value, $Res Function(_CardInformation) _then)
      : super(_value, (v) => _then(v as _CardInformation));

  @override
  _CardInformation get _value => super._value as _CardInformation;

  @override
  $Res call({
    Object? userInformation = freezed,
    Object? usageInformation = freezed,
    Object? pickUpLocation = freezed,
  }) {
    return _then(_CardInformation(
      userInformation: userInformation == freezed
          ? _value.userInformation
          : userInformation // ignore: cast_nullable_to_non_nullable
              as UserInformation?,
      usageInformation: usageInformation == freezed
          ? _value.usageInformation
          : usageInformation // ignore: cast_nullable_to_non_nullable
              as CardUsageInformation?,
      pickUpLocation: pickUpLocation == freezed
          ? _value.pickUpLocation
          : pickUpLocation // ignore: cast_nullable_to_non_nullable
              as CardPickUpLocation?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardInformation implements _CardInformation {
  _$_CardInformation(
      {this.userInformation, this.usageInformation, this.pickUpLocation});

  factory _$_CardInformation.fromJson(Map<String, dynamic> json) =>
      _$$_CardInformationFromJson(json);

  @override
  final UserInformation? userInformation;
  @override
  final CardUsageInformation? usageInformation;
  @override
  final CardPickUpLocation? pickUpLocation;

  @override
  String toString() {
    return 'CardInformation(userInformation: $userInformation, usageInformation: $usageInformation, pickUpLocation: $pickUpLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CardInformation &&
            const DeepCollectionEquality()
                .equals(other.userInformation, userInformation) &&
            const DeepCollectionEquality()
                .equals(other.usageInformation, usageInformation) &&
            const DeepCollectionEquality()
                .equals(other.pickUpLocation, pickUpLocation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userInformation),
      const DeepCollectionEquality().hash(usageInformation),
      const DeepCollectionEquality().hash(pickUpLocation));

  @JsonKey(ignore: true)
  @override
  _$CardInformationCopyWith<_CardInformation> get copyWith =>
      __$CardInformationCopyWithImpl<_CardInformation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardInformationToJson(this);
  }
}

abstract class _CardInformation implements CardInformation {
  factory _CardInformation(
      {UserInformation? userInformation,
      CardUsageInformation? usageInformation,
      CardPickUpLocation? pickUpLocation}) = _$_CardInformation;

  factory _CardInformation.fromJson(Map<String, dynamic> json) =
      _$_CardInformation.fromJson;

  @override
  UserInformation? get userInformation;
  @override
  CardUsageInformation? get usageInformation;
  @override
  CardPickUpLocation? get pickUpLocation;
  @override
  @JsonKey(ignore: true)
  _$CardInformationCopyWith<_CardInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

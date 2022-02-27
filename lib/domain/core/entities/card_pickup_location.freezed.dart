// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'card_pickup_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardPickUpLocation _$CardPickUpLocationFromJson(Map<String, dynamic> json) {
  return _CardPickUpLocation.fromJson(json);
}

/// @nodoc
class _$CardPickUpLocationTearOff {
  const _$CardPickUpLocationTearOff();

  _CardPickUpLocation call({String? county, String? region}) {
    return _CardPickUpLocation(
      county: county,
      region: region,
    );
  }

  CardPickUpLocation fromJson(Map<String, Object?> json) {
    return CardPickUpLocation.fromJson(json);
  }
}

/// @nodoc
const $CardPickUpLocation = _$CardPickUpLocationTearOff();

/// @nodoc
mixin _$CardPickUpLocation {
  String? get county => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardPickUpLocationCopyWith<CardPickUpLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardPickUpLocationCopyWith<$Res> {
  factory $CardPickUpLocationCopyWith(
          CardPickUpLocation value, $Res Function(CardPickUpLocation) then) =
      _$CardPickUpLocationCopyWithImpl<$Res>;
  $Res call({String? county, String? region});
}

/// @nodoc
class _$CardPickUpLocationCopyWithImpl<$Res>
    implements $CardPickUpLocationCopyWith<$Res> {
  _$CardPickUpLocationCopyWithImpl(this._value, this._then);

  final CardPickUpLocation _value;
  // ignore: unused_field
  final $Res Function(CardPickUpLocation) _then;

  @override
  $Res call({
    Object? county = freezed,
    Object? region = freezed,
  }) {
    return _then(_value.copyWith(
      county: county == freezed
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as String?,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CardPickUpLocationCopyWith<$Res>
    implements $CardPickUpLocationCopyWith<$Res> {
  factory _$CardPickUpLocationCopyWith(
          _CardPickUpLocation value, $Res Function(_CardPickUpLocation) then) =
      __$CardPickUpLocationCopyWithImpl<$Res>;
  @override
  $Res call({String? county, String? region});
}

/// @nodoc
class __$CardPickUpLocationCopyWithImpl<$Res>
    extends _$CardPickUpLocationCopyWithImpl<$Res>
    implements _$CardPickUpLocationCopyWith<$Res> {
  __$CardPickUpLocationCopyWithImpl(
      _CardPickUpLocation _value, $Res Function(_CardPickUpLocation) _then)
      : super(_value, (v) => _then(v as _CardPickUpLocation));

  @override
  _CardPickUpLocation get _value => super._value as _CardPickUpLocation;

  @override
  $Res call({
    Object? county = freezed,
    Object? region = freezed,
  }) {
    return _then(_CardPickUpLocation(
      county: county == freezed
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as String?,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardPickUpLocation implements _CardPickUpLocation {
  _$_CardPickUpLocation({this.county, this.region});

  factory _$_CardPickUpLocation.fromJson(Map<String, dynamic> json) =>
      _$$_CardPickUpLocationFromJson(json);

  @override
  final String? county;
  @override
  final String? region;

  @override
  String toString() {
    return 'CardPickUpLocation(county: $county, region: $region)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CardPickUpLocation &&
            const DeepCollectionEquality().equals(other.county, county) &&
            const DeepCollectionEquality().equals(other.region, region));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(county),
      const DeepCollectionEquality().hash(region));

  @JsonKey(ignore: true)
  @override
  _$CardPickUpLocationCopyWith<_CardPickUpLocation> get copyWith =>
      __$CardPickUpLocationCopyWithImpl<_CardPickUpLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardPickUpLocationToJson(this);
  }
}

abstract class _CardPickUpLocation implements CardPickUpLocation {
  factory _CardPickUpLocation({String? county, String? region}) =
      _$_CardPickUpLocation;

  factory _CardPickUpLocation.fromJson(Map<String, dynamic> json) =
      _$_CardPickUpLocation.fromJson;

  @override
  String? get county;
  @override
  String? get region;
  @override
  @JsonKey(ignore: true)
  _$CardPickUpLocationCopyWith<_CardPickUpLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

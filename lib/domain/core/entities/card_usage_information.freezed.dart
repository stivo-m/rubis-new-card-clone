// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'card_usage_information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardUsageInformation _$CardUsageInformationFromJson(Map<String, dynamic> json) {
  return _CardUsageInformation.fromJson(json);
}

/// @nodoc
class _$CardUsageInformationTearOff {
  const _$CardUsageInformationTearOff();

  _CardUsageInformation call(
      {List<String>? productRestrictions,
      List<String>? authorizedZonesOfUse,
      List<String>? daysOfUse,
      String? promoCode,
      bool? shouldSendSMSAlerts,
      bool? shouldReportMilage,
      bool? shouldCaptureDriverCode}) {
    return _CardUsageInformation(
      productRestrictions: productRestrictions,
      authorizedZonesOfUse: authorizedZonesOfUse,
      daysOfUse: daysOfUse,
      promoCode: promoCode,
      shouldSendSMSAlerts: shouldSendSMSAlerts,
      shouldReportMilage: shouldReportMilage,
      shouldCaptureDriverCode: shouldCaptureDriverCode,
    );
  }

  CardUsageInformation fromJson(Map<String, Object?> json) {
    return CardUsageInformation.fromJson(json);
  }
}

/// @nodoc
const $CardUsageInformation = _$CardUsageInformationTearOff();

/// @nodoc
mixin _$CardUsageInformation {
  List<String>? get productRestrictions => throw _privateConstructorUsedError;
  List<String>? get authorizedZonesOfUse => throw _privateConstructorUsedError;
  List<String>? get daysOfUse => throw _privateConstructorUsedError;
  String? get promoCode => throw _privateConstructorUsedError;
  bool? get shouldSendSMSAlerts => throw _privateConstructorUsedError;
  bool? get shouldReportMilage => throw _privateConstructorUsedError;
  bool? get shouldCaptureDriverCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardUsageInformationCopyWith<CardUsageInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardUsageInformationCopyWith<$Res> {
  factory $CardUsageInformationCopyWith(CardUsageInformation value,
          $Res Function(CardUsageInformation) then) =
      _$CardUsageInformationCopyWithImpl<$Res>;
  $Res call(
      {List<String>? productRestrictions,
      List<String>? authorizedZonesOfUse,
      List<String>? daysOfUse,
      String? promoCode,
      bool? shouldSendSMSAlerts,
      bool? shouldReportMilage,
      bool? shouldCaptureDriverCode});
}

/// @nodoc
class _$CardUsageInformationCopyWithImpl<$Res>
    implements $CardUsageInformationCopyWith<$Res> {
  _$CardUsageInformationCopyWithImpl(this._value, this._then);

  final CardUsageInformation _value;
  // ignore: unused_field
  final $Res Function(CardUsageInformation) _then;

  @override
  $Res call({
    Object? productRestrictions = freezed,
    Object? authorizedZonesOfUse = freezed,
    Object? daysOfUse = freezed,
    Object? promoCode = freezed,
    Object? shouldSendSMSAlerts = freezed,
    Object? shouldReportMilage = freezed,
    Object? shouldCaptureDriverCode = freezed,
  }) {
    return _then(_value.copyWith(
      productRestrictions: productRestrictions == freezed
          ? _value.productRestrictions
          : productRestrictions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      authorizedZonesOfUse: authorizedZonesOfUse == freezed
          ? _value.authorizedZonesOfUse
          : authorizedZonesOfUse // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      daysOfUse: daysOfUse == freezed
          ? _value.daysOfUse
          : daysOfUse // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      promoCode: promoCode == freezed
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      shouldSendSMSAlerts: shouldSendSMSAlerts == freezed
          ? _value.shouldSendSMSAlerts
          : shouldSendSMSAlerts // ignore: cast_nullable_to_non_nullable
              as bool?,
      shouldReportMilage: shouldReportMilage == freezed
          ? _value.shouldReportMilage
          : shouldReportMilage // ignore: cast_nullable_to_non_nullable
              as bool?,
      shouldCaptureDriverCode: shouldCaptureDriverCode == freezed
          ? _value.shouldCaptureDriverCode
          : shouldCaptureDriverCode // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$CardUsageInformationCopyWith<$Res>
    implements $CardUsageInformationCopyWith<$Res> {
  factory _$CardUsageInformationCopyWith(_CardUsageInformation value,
          $Res Function(_CardUsageInformation) then) =
      __$CardUsageInformationCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String>? productRestrictions,
      List<String>? authorizedZonesOfUse,
      List<String>? daysOfUse,
      String? promoCode,
      bool? shouldSendSMSAlerts,
      bool? shouldReportMilage,
      bool? shouldCaptureDriverCode});
}

/// @nodoc
class __$CardUsageInformationCopyWithImpl<$Res>
    extends _$CardUsageInformationCopyWithImpl<$Res>
    implements _$CardUsageInformationCopyWith<$Res> {
  __$CardUsageInformationCopyWithImpl(
      _CardUsageInformation _value, $Res Function(_CardUsageInformation) _then)
      : super(_value, (v) => _then(v as _CardUsageInformation));

  @override
  _CardUsageInformation get _value => super._value as _CardUsageInformation;

  @override
  $Res call({
    Object? productRestrictions = freezed,
    Object? authorizedZonesOfUse = freezed,
    Object? daysOfUse = freezed,
    Object? promoCode = freezed,
    Object? shouldSendSMSAlerts = freezed,
    Object? shouldReportMilage = freezed,
    Object? shouldCaptureDriverCode = freezed,
  }) {
    return _then(_CardUsageInformation(
      productRestrictions: productRestrictions == freezed
          ? _value.productRestrictions
          : productRestrictions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      authorizedZonesOfUse: authorizedZonesOfUse == freezed
          ? _value.authorizedZonesOfUse
          : authorizedZonesOfUse // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      daysOfUse: daysOfUse == freezed
          ? _value.daysOfUse
          : daysOfUse // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      promoCode: promoCode == freezed
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      shouldSendSMSAlerts: shouldSendSMSAlerts == freezed
          ? _value.shouldSendSMSAlerts
          : shouldSendSMSAlerts // ignore: cast_nullable_to_non_nullable
              as bool?,
      shouldReportMilage: shouldReportMilage == freezed
          ? _value.shouldReportMilage
          : shouldReportMilage // ignore: cast_nullable_to_non_nullable
              as bool?,
      shouldCaptureDriverCode: shouldCaptureDriverCode == freezed
          ? _value.shouldCaptureDriverCode
          : shouldCaptureDriverCode // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardUsageInformation implements _CardUsageInformation {
  _$_CardUsageInformation(
      {this.productRestrictions,
      this.authorizedZonesOfUse,
      this.daysOfUse,
      this.promoCode,
      this.shouldSendSMSAlerts,
      this.shouldReportMilage,
      this.shouldCaptureDriverCode});

  factory _$_CardUsageInformation.fromJson(Map<String, dynamic> json) =>
      _$$_CardUsageInformationFromJson(json);

  @override
  final List<String>? productRestrictions;
  @override
  final List<String>? authorizedZonesOfUse;
  @override
  final List<String>? daysOfUse;
  @override
  final String? promoCode;
  @override
  final bool? shouldSendSMSAlerts;
  @override
  final bool? shouldReportMilage;
  @override
  final bool? shouldCaptureDriverCode;

  @override
  String toString() {
    return 'CardUsageInformation(productRestrictions: $productRestrictions, authorizedZonesOfUse: $authorizedZonesOfUse, daysOfUse: $daysOfUse, promoCode: $promoCode, shouldSendSMSAlerts: $shouldSendSMSAlerts, shouldReportMilage: $shouldReportMilage, shouldCaptureDriverCode: $shouldCaptureDriverCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CardUsageInformation &&
            const DeepCollectionEquality()
                .equals(other.productRestrictions, productRestrictions) &&
            const DeepCollectionEquality()
                .equals(other.authorizedZonesOfUse, authorizedZonesOfUse) &&
            const DeepCollectionEquality().equals(other.daysOfUse, daysOfUse) &&
            const DeepCollectionEquality().equals(other.promoCode, promoCode) &&
            const DeepCollectionEquality()
                .equals(other.shouldSendSMSAlerts, shouldSendSMSAlerts) &&
            const DeepCollectionEquality()
                .equals(other.shouldReportMilage, shouldReportMilage) &&
            const DeepCollectionEquality().equals(
                other.shouldCaptureDriverCode, shouldCaptureDriverCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(productRestrictions),
      const DeepCollectionEquality().hash(authorizedZonesOfUse),
      const DeepCollectionEquality().hash(daysOfUse),
      const DeepCollectionEquality().hash(promoCode),
      const DeepCollectionEquality().hash(shouldSendSMSAlerts),
      const DeepCollectionEquality().hash(shouldReportMilage),
      const DeepCollectionEquality().hash(shouldCaptureDriverCode));

  @JsonKey(ignore: true)
  @override
  _$CardUsageInformationCopyWith<_CardUsageInformation> get copyWith =>
      __$CardUsageInformationCopyWithImpl<_CardUsageInformation>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardUsageInformationToJson(this);
  }
}

abstract class _CardUsageInformation implements CardUsageInformation {
  factory _CardUsageInformation(
      {List<String>? productRestrictions,
      List<String>? authorizedZonesOfUse,
      List<String>? daysOfUse,
      String? promoCode,
      bool? shouldSendSMSAlerts,
      bool? shouldReportMilage,
      bool? shouldCaptureDriverCode}) = _$_CardUsageInformation;

  factory _CardUsageInformation.fromJson(Map<String, dynamic> json) =
      _$_CardUsageInformation.fromJson;

  @override
  List<String>? get productRestrictions;
  @override
  List<String>? get authorizedZonesOfUse;
  @override
  List<String>? get daysOfUse;
  @override
  String? get promoCode;
  @override
  bool? get shouldSendSMSAlerts;
  @override
  bool? get shouldReportMilage;
  @override
  bool? get shouldCaptureDriverCode;
  @override
  @JsonKey(ignore: true)
  _$CardUsageInformationCopyWith<_CardUsageInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

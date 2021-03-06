// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppState call(
      {CardInformation? cardInformation,
      CardInformationStage? cardInformationStage,
      @JsonKey(ignore: true) PageController? cardPageController,
      ThemeMode? themeMode}) {
    return _AppState(
      cardInformation: cardInformation,
      cardInformationStage: cardInformationStage,
      cardPageController: cardPageController,
      themeMode: themeMode,
    );
  }

  AppState fromJson(Map<String, Object?> json) {
    return AppState.fromJson(json);
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  CardInformation? get cardInformation => throw _privateConstructorUsedError;
  CardInformationStage? get cardInformationStage =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  PageController? get cardPageController => throw _privateConstructorUsedError;
  ThemeMode? get themeMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {CardInformation? cardInformation,
      CardInformationStage? cardInformationStage,
      @JsonKey(ignore: true) PageController? cardPageController,
      ThemeMode? themeMode});

  $CardInformationCopyWith<$Res>? get cardInformation;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? cardInformation = freezed,
    Object? cardInformationStage = freezed,
    Object? cardPageController = freezed,
    Object? themeMode = freezed,
  }) {
    return _then(_value.copyWith(
      cardInformation: cardInformation == freezed
          ? _value.cardInformation
          : cardInformation // ignore: cast_nullable_to_non_nullable
              as CardInformation?,
      cardInformationStage: cardInformationStage == freezed
          ? _value.cardInformationStage
          : cardInformationStage // ignore: cast_nullable_to_non_nullable
              as CardInformationStage?,
      cardPageController: cardPageController == freezed
          ? _value.cardPageController
          : cardPageController // ignore: cast_nullable_to_non_nullable
              as PageController?,
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode?,
    ));
  }

  @override
  $CardInformationCopyWith<$Res>? get cardInformation {
    if (_value.cardInformation == null) {
      return null;
    }

    return $CardInformationCopyWith<$Res>(_value.cardInformation!, (value) {
      return _then(_value.copyWith(cardInformation: value));
    });
  }
}

/// @nodoc
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {CardInformation? cardInformation,
      CardInformationStage? cardInformationStage,
      @JsonKey(ignore: true) PageController? cardPageController,
      ThemeMode? themeMode});

  @override
  $CardInformationCopyWith<$Res>? get cardInformation;
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object? cardInformation = freezed,
    Object? cardInformationStage = freezed,
    Object? cardPageController = freezed,
    Object? themeMode = freezed,
  }) {
    return _then(_AppState(
      cardInformation: cardInformation == freezed
          ? _value.cardInformation
          : cardInformation // ignore: cast_nullable_to_non_nullable
              as CardInformation?,
      cardInformationStage: cardInformationStage == freezed
          ? _value.cardInformationStage
          : cardInformationStage // ignore: cast_nullable_to_non_nullable
              as CardInformationStage?,
      cardPageController: cardPageController == freezed
          ? _value.cardPageController
          : cardPageController // ignore: cast_nullable_to_non_nullable
              as PageController?,
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppState implements _AppState {
  _$_AppState(
      {this.cardInformation,
      this.cardInformationStage,
      @JsonKey(ignore: true) this.cardPageController,
      this.themeMode});

  factory _$_AppState.fromJson(Map<String, dynamic> json) =>
      _$$_AppStateFromJson(json);

  @override
  final CardInformation? cardInformation;
  @override
  final CardInformationStage? cardInformationStage;
  @override
  @JsonKey(ignore: true)
  final PageController? cardPageController;
  @override
  final ThemeMode? themeMode;

  @override
  String toString() {
    return 'AppState(cardInformation: $cardInformation, cardInformationStage: $cardInformationStage, cardPageController: $cardPageController, themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppState &&
            const DeepCollectionEquality()
                .equals(other.cardInformation, cardInformation) &&
            const DeepCollectionEquality()
                .equals(other.cardInformationStage, cardInformationStage) &&
            const DeepCollectionEquality()
                .equals(other.cardPageController, cardPageController) &&
            const DeepCollectionEquality().equals(other.themeMode, themeMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cardInformation),
      const DeepCollectionEquality().hash(cardInformationStage),
      const DeepCollectionEquality().hash(cardPageController),
      const DeepCollectionEquality().hash(themeMode));

  @JsonKey(ignore: true)
  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppStateToJson(this);
  }
}

abstract class _AppState implements AppState {
  factory _AppState(
      {CardInformation? cardInformation,
      CardInformationStage? cardInformationStage,
      @JsonKey(ignore: true) PageController? cardPageController,
      ThemeMode? themeMode}) = _$_AppState;

  factory _AppState.fromJson(Map<String, dynamic> json) = _$_AppState.fromJson;

  @override
  CardInformation? get cardInformation;
  @override
  CardInformationStage? get cardInformationStage;
  @override
  @JsonKey(ignore: true)
  PageController? get cardPageController;
  @override
  ThemeMode? get themeMode;
  @override
  @JsonKey(ignore: true)
  _$AppStateCopyWith<_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_car_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterCarState {
  String get uniqueCode => throw _privateConstructorUsedError;
  String get carVIN => throw _privateConstructorUsedError;
  String get carModel => throw _privateConstructorUsedError;
  String get carMade => throw _privateConstructorUsedError;
  String get carYear => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterCarStateCopyWith<RegisterCarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterCarStateCopyWith<$Res> {
  factory $RegisterCarStateCopyWith(
          RegisterCarState value, $Res Function(RegisterCarState) then) =
      _$RegisterCarStateCopyWithImpl<$Res, RegisterCarState>;
  @useResult
  $Res call(
      {String uniqueCode,
      String carVIN,
      String carModel,
      String carMade,
      String carYear});
}

/// @nodoc
class _$RegisterCarStateCopyWithImpl<$Res, $Val extends RegisterCarState>
    implements $RegisterCarStateCopyWith<$Res> {
  _$RegisterCarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uniqueCode = null,
    Object? carVIN = null,
    Object? carModel = null,
    Object? carMade = null,
    Object? carYear = null,
  }) {
    return _then(_value.copyWith(
      uniqueCode: null == uniqueCode
          ? _value.uniqueCode
          : uniqueCode // ignore: cast_nullable_to_non_nullable
              as String,
      carVIN: null == carVIN
          ? _value.carVIN
          : carVIN // ignore: cast_nullable_to_non_nullable
              as String,
      carModel: null == carModel
          ? _value.carModel
          : carModel // ignore: cast_nullable_to_non_nullable
              as String,
      carMade: null == carMade
          ? _value.carMade
          : carMade // ignore: cast_nullable_to_non_nullable
              as String,
      carYear: null == carYear
          ? _value.carYear
          : carYear // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterCarStateImplCopyWith<$Res>
    implements $RegisterCarStateCopyWith<$Res> {
  factory _$$RegisterCarStateImplCopyWith(_$RegisterCarStateImpl value,
          $Res Function(_$RegisterCarStateImpl) then) =
      __$$RegisterCarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uniqueCode,
      String carVIN,
      String carModel,
      String carMade,
      String carYear});
}

/// @nodoc
class __$$RegisterCarStateImplCopyWithImpl<$Res>
    extends _$RegisterCarStateCopyWithImpl<$Res, _$RegisterCarStateImpl>
    implements _$$RegisterCarStateImplCopyWith<$Res> {
  __$$RegisterCarStateImplCopyWithImpl(_$RegisterCarStateImpl _value,
      $Res Function(_$RegisterCarStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uniqueCode = null,
    Object? carVIN = null,
    Object? carModel = null,
    Object? carMade = null,
    Object? carYear = null,
  }) {
    return _then(_$RegisterCarStateImpl(
      uniqueCode: null == uniqueCode
          ? _value.uniqueCode
          : uniqueCode // ignore: cast_nullable_to_non_nullable
              as String,
      carVIN: null == carVIN
          ? _value.carVIN
          : carVIN // ignore: cast_nullable_to_non_nullable
              as String,
      carModel: null == carModel
          ? _value.carModel
          : carModel // ignore: cast_nullable_to_non_nullable
              as String,
      carMade: null == carMade
          ? _value.carMade
          : carMade // ignore: cast_nullable_to_non_nullable
              as String,
      carYear: null == carYear
          ? _value.carYear
          : carYear // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterCarStateImpl implements _RegisterCarState {
  _$RegisterCarStateImpl(
      {this.uniqueCode = '',
      this.carVIN = '',
      this.carModel = '',
      this.carMade = '',
      this.carYear = ''});

  @override
  @JsonKey()
  final String uniqueCode;
  @override
  @JsonKey()
  final String carVIN;
  @override
  @JsonKey()
  final String carModel;
  @override
  @JsonKey()
  final String carMade;
  @override
  @JsonKey()
  final String carYear;

  @override
  String toString() {
    return 'RegisterCarState(uniqueCode: $uniqueCode, carVIN: $carVIN, carModel: $carModel, carMade: $carMade, carYear: $carYear)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterCarStateImpl &&
            (identical(other.uniqueCode, uniqueCode) ||
                other.uniqueCode == uniqueCode) &&
            (identical(other.carVIN, carVIN) || other.carVIN == carVIN) &&
            (identical(other.carModel, carModel) ||
                other.carModel == carModel) &&
            (identical(other.carMade, carMade) || other.carMade == carMade) &&
            (identical(other.carYear, carYear) || other.carYear == carYear));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, uniqueCode, carVIN, carModel, carMade, carYear);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterCarStateImplCopyWith<_$RegisterCarStateImpl> get copyWith =>
      __$$RegisterCarStateImplCopyWithImpl<_$RegisterCarStateImpl>(
          this, _$identity);
}

abstract class _RegisterCarState implements RegisterCarState {
  factory _RegisterCarState(
      {final String uniqueCode,
      final String carVIN,
      final String carModel,
      final String carMade,
      final String carYear}) = _$RegisterCarStateImpl;

  @override
  String get uniqueCode;
  @override
  String get carVIN;
  @override
  String get carModel;
  @override
  String get carMade;
  @override
  String get carYear;
  @override
  @JsonKey(ignore: true)
  _$$RegisterCarStateImplCopyWith<_$RegisterCarStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_static_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateStaticState {
  String get alias => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateStaticStateCopyWith<UpdateStaticState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStaticStateCopyWith<$Res> {
  factory $UpdateStaticStateCopyWith(
          UpdateStaticState value, $Res Function(UpdateStaticState) then) =
      _$UpdateStaticStateCopyWithImpl<$Res, UpdateStaticState>;
  @useResult
  $Res call({String alias});
}

/// @nodoc
class _$UpdateStaticStateCopyWithImpl<$Res, $Val extends UpdateStaticState>
    implements $UpdateStaticStateCopyWith<$Res> {
  _$UpdateStaticStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alias = null,
  }) {
    return _then(_value.copyWith(
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateStaticStateImplCopyWith<$Res>
    implements $UpdateStaticStateCopyWith<$Res> {
  factory _$$UpdateStaticStateImplCopyWith(_$UpdateStaticStateImpl value,
          $Res Function(_$UpdateStaticStateImpl) then) =
      __$$UpdateStaticStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String alias});
}

/// @nodoc
class __$$UpdateStaticStateImplCopyWithImpl<$Res>
    extends _$UpdateStaticStateCopyWithImpl<$Res, _$UpdateStaticStateImpl>
    implements _$$UpdateStaticStateImplCopyWith<$Res> {
  __$$UpdateStaticStateImplCopyWithImpl(_$UpdateStaticStateImpl _value,
      $Res Function(_$UpdateStaticStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alias = null,
  }) {
    return _then(_$UpdateStaticStateImpl(
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateStaticStateImpl implements _UpdateStaticState {
  _$UpdateStaticStateImpl({this.alias = ''});

  @override
  @JsonKey()
  final String alias;

  @override
  String toString() {
    return 'UpdateStaticState(alias: $alias)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStaticStateImpl &&
            (identical(other.alias, alias) || other.alias == alias));
  }

  @override
  int get hashCode => Object.hash(runtimeType, alias);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStaticStateImplCopyWith<_$UpdateStaticStateImpl> get copyWith =>
      __$$UpdateStaticStateImplCopyWithImpl<_$UpdateStaticStateImpl>(
          this, _$identity);
}

abstract class _UpdateStaticState implements UpdateStaticState {
  factory _UpdateStaticState({final String alias}) = _$UpdateStaticStateImpl;

  @override
  String get alias;
  @override
  @JsonKey(ignore: true)
  _$$UpdateStaticStateImplCopyWith<_$UpdateStaticStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

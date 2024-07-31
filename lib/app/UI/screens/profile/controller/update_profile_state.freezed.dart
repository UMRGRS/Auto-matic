// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateProfileState {
  String get password => throw _privateConstructorUsedError;
  String get vPassword => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateProfileStateCopyWith<UpdateProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileStateCopyWith<$Res> {
  factory $UpdateProfileStateCopyWith(
          UpdateProfileState value, $Res Function(UpdateProfileState) then) =
      _$UpdateProfileStateCopyWithImpl<$Res, UpdateProfileState>;
  @useResult
  $Res call({String password, String vPassword, String name, String lastname});
}

/// @nodoc
class _$UpdateProfileStateCopyWithImpl<$Res, $Val extends UpdateProfileState>
    implements $UpdateProfileStateCopyWith<$Res> {
  _$UpdateProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? vPassword = null,
    Object? name = null,
    Object? lastname = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      vPassword: null == vPassword
          ? _value.vPassword
          : vPassword // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateProfileStateImplCopyWith<$Res>
    implements $UpdateProfileStateCopyWith<$Res> {
  factory _$$UpdateProfileStateImplCopyWith(_$UpdateProfileStateImpl value,
          $Res Function(_$UpdateProfileStateImpl) then) =
      __$$UpdateProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password, String vPassword, String name, String lastname});
}

/// @nodoc
class __$$UpdateProfileStateImplCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res, _$UpdateProfileStateImpl>
    implements _$$UpdateProfileStateImplCopyWith<$Res> {
  __$$UpdateProfileStateImplCopyWithImpl(_$UpdateProfileStateImpl _value,
      $Res Function(_$UpdateProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? vPassword = null,
    Object? name = null,
    Object? lastname = null,
  }) {
    return _then(_$UpdateProfileStateImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      vPassword: null == vPassword
          ? _value.vPassword
          : vPassword // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateProfileStateImpl implements _UpdateProfileState {
  _$UpdateProfileStateImpl(
      {this.password = '',
      this.vPassword = '',
      this.name = '',
      this.lastname = ''});

  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String vPassword;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String lastname;

  @override
  String toString() {
    return 'UpdateProfileState(password: $password, vPassword: $vPassword, name: $name, lastname: $lastname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileStateImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.vPassword, vPassword) ||
                other.vPassword == vPassword) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, password, vPassword, name, lastname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileStateImplCopyWith<_$UpdateProfileStateImpl> get copyWith =>
      __$$UpdateProfileStateImplCopyWithImpl<_$UpdateProfileStateImpl>(
          this, _$identity);
}

abstract class _UpdateProfileState implements UpdateProfileState {
  factory _UpdateProfileState(
      {final String password,
      final String vPassword,
      final String name,
      final String lastname}) = _$UpdateProfileStateImpl;

  @override
  String get password;
  @override
  String get vPassword;
  @override
  String get name;
  @override
  String get lastname;
  @override
  @JsonKey(ignore: true)
  _$$UpdateProfileStateImplCopyWith<_$UpdateProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

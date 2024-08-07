import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  factory RegisterState({
    @Default('') String email,
    @Default('') String password,
    @Default('') String vPassword,
    @Default('') String name,
    @Default('') String lastName,
  }) = _RegisterState;
  static RegisterState get initialState => RegisterState();
}

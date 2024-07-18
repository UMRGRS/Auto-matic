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
    @Default('') String uniqueCode,
    @Default('') String carVIN,
    @Default('') String carModel,
    @Default('') String carMade,
    @Default('') String carYear,
  }) = _RegisterState;
  static RegisterState get initialState => RegisterState();
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile_state.freezed.dart';

@freezed
class UpdateProfileState with _$UpdateProfileState {
  factory UpdateProfileState({
    @Default('') String password,
    @Default('') String vPassword,
    @Default('') String name,
    @Default('') String lastname,
  }) = _UpdateProfileState;
  static UpdateProfileState get initialState => UpdateProfileState();
}

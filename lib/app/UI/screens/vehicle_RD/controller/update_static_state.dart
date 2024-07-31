import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_static_state.freezed.dart';

@freezed
class UpdateStaticState with  _$UpdateStaticState{
  factory UpdateStaticState({
    @Default('') String alias,
  }) = _UpdateStaticState;
  static UpdateStaticState get initialState => UpdateStaticState();
}
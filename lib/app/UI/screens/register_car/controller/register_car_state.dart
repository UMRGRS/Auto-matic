import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_car_state.freezed.dart';

@freezed
class RegisterCarState with  _$RegisterCarState{
  factory RegisterCarState({
    @Default('') String uniqueCode,
    @Default('') String carVIN,
    @Default('') String carModel,
    @Default('') String carMade,
    @Default('') String carYear,
  }) = _RegisterCarState;
  static RegisterCarState get initialState => RegisterCarState();
}
import 'package:auto_matic/app/domain/inputs/sign_up_data.dart';
import 'package:auto_matic/app/domain/responses/sign_up_response.dart';

abstract class SignUpRepository{
  Future<SignUpResponse> registerUser(SignUpData data);
}
import '../inputs/sign_up_data.dart';
import '../responses/sign_up_response.dart';

abstract class SignUpRepository {
  Future<SignUpResponse> register(SignUpData data);
}





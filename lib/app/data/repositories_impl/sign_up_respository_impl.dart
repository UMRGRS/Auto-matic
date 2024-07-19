import 'package:auto_matic/app/domain/inputs/sign_up_data.dart';
import 'package:auto_matic/app/domain/repositories/sign_up_repository.dart';
import 'package:auto_matic/app/domain/responses/sign_up_response.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpRepositoryImpl extends SignUpRepository{

  final FirebaseAuth _auth;
  SignUpRepositoryImpl(this._auth);

  @override
  Future<SignUpResponse> registerUser(SignUpData data) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: data.email,
        password: data.password,
      );
      userCredential.user!.updateDisplayName("${data.name} ${data.lastname}");
      return SignUpResponse(null, userCredential.user);
    } on FirebaseAuthException catch (e) {
      return SignUpResponse(
        parseStringToSignUpError(e.code),
        null,
      );
    }
  }
}
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
      await userCredential.user?.updateDisplayName("${data.name} ${data.lastname}");
      _auth.currentUser!.reload();
      return SignUpResponse(null, _auth.currentUser);
    } on FirebaseAuthException catch (e) {
      return SignUpResponse(
        parseStringToSignUpError(e.code),
        null,
      );
    }
  }
}
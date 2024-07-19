import 'package:firebase_auth/firebase_auth.dart';

class SignInResponse {
  final SignInError? error;
  final User? user;
  SignInResponse(this.error, this.user);
}

parseStringToSignInError(String text) {
  switch (text) {
    case 'invalid-email':
      return SignInError.invalidEmail;
    case 'user-disabled':
      return SignInError.userDisabled;
    case 'user-not-found':
      return SignInError.userNotFound;
    case 'wrong-password':
      return SignInError.wrongPassword;
    case 'network-request-failed':
      return SignInError.networkRequestFailed;
    case 'too-many-requests':
      return SignInError.tooManyRequests;
    default:
      return SignInError.unknown;
  }
}

enum SignInError {
  invalidEmail,
  userDisabled,
  userNotFound,
  wrongPassword,
  networkRequestFailed,
  tooManyRequests,
  unknown
}

import 'package:firebase_auth/firebase_auth.dart';

class SignInResponse {
  final SignInError? error;
  final User? user;
  final String? providerId;
  SignInResponse({
    required this.error,
    required this.user,
    required this.providerId,
  });
}

SignInResponse getSignInError(FirebaseAuthException e) {
  late SignInError error;
  switch (e.code) {
    case 'invalid-email':
      error = SignInError.invalidEmail;
      break;
    case 'user-disabled':
      error = SignInError.userDisabled;
      break;
    case 'user-not-found':
      error = SignInError.userNotFound;
      break;
    case 'wrong-password':
      error = SignInError.wrongPassword;
      break;
    case 'network-request-failed':
      error = SignInError.networkRequestFailed;
      break;
    case 'too-many-requests':
      error = SignInError.tooManyRequests;
      break;
    case 'account-exists-with-different-credential':
      error = SignInError.accountExistsWithDifferentCredential;
      break;
    case 'invalid-credential':
      error = SignInError.invalidCredential;
      break;
    case 'operation-not-allowed':
      error = SignInError.operationNotAllowed;
      break;
    default:
      error = SignInError.unknown;
      break;
  }
  return SignInResponse(
      error: error, user: null, providerId: e.credential?.providerId);
}

enum SignInError {
  cancelled,
  invalidEmail,
  userDisabled,
  userNotFound,
  wrongPassword,
  networkRequestFailed,
  tooManyRequests,
  accountExistsWithDifferentCredential,
  invalidCredential,
  operationNotAllowed,
  unknown
}

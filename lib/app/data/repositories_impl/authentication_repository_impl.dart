import 'dart:async';

import 'package:auto_matic/app/domain/repositories/authentication_repository.dart';
import 'package:auto_matic/app/domain/responses/sign_in_response.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final FirebaseAuth _auth;
  final GoogleSignIn _googleSignIn;
  User? _user;

  final Completer<void> _completer = Completer();

  AuthenticationRepositoryImpl(this._auth, this._googleSignIn) {
    _init();
  }

  @override
  Future<User?> get user async {
    await _completer.future;
    return _user;
  }

  FirebaseAuth get auth => _auth;

  void _init() async {
    _auth.authStateChanges().listen((User? user) {
      if (!_completer.isCompleted) {
        _completer.complete();
      }
      _user = user;
    });
  }

  @override
  Future<void> signOut() {
    return _auth.signOut();
  }

  @override
  Future<SignInResponse> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      final user = userCredential.user;
      return SignInResponse(
          error: null,
          user: user,
          providerId: userCredential.credential?.providerId);
    } on FirebaseAuthException catch (e) {
      return getSignInError(e);
    }
  }

  @override
  Future<SignInResponse> signInWithGoogle() async {
    try {
      final account = await _googleSignIn.signIn();
      if (account == null) {
        return SignInResponse(
            error: SignInError.cancelled, user: null, providerId: null);
      }
      final googleAuth = await account.authentication;
      final oAuthCredential = GoogleAuthProvider.credential(
          idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);
      final userCredential = await _auth.signInWithCredential(oAuthCredential);
      return SignInResponse(
          error: null, user: userCredential.user, providerId: null);
    } on FirebaseAuthException catch (e) {
      return getSignInError(e);
    }
  }
}

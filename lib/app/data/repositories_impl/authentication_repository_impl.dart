import 'dart:async';

import 'package:auto_matic/app/domain/repositories/authentication_repository.dart';
import 'package:auto_matic/app/domain/responses/sign_in_response.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final FirebaseAuth _auth;
  final GoogleSignIn _googleSignIn;
  final GoogleAuthProvider _googleAuthProvider;
  User? _user;

  final Completer<void> _completer = Completer();

  AuthenticationRepositoryImpl(this._auth, this._googleSignIn, this._googleAuthProvider) {
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
  Future<void> signOut() async {
    final data = _user?.providerData ?? [];
    String providerId = 'firebase';
    for(final provider in data){
      if(provider.providerId != 'firebase'){
        providerId = provider.providerId;
        break;
      }
    }
    if(providerId == 'google.com' && !kIsWeb){
      _googleSignIn!.signOut();
    }
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
  Future<SignInResponse> signInWithGoogleMobile() async {
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

  @override
  Future<SignInResponse> signInWithGoogleWeb() async{
    _googleAuthProvider.addScope('https://www.googleapis.com/auth/cloud-platform.read-only');
    _googleAuthProvider.setCustomParameters({
      'prompt': 'select_account'
    });
    try{
      final credential = await _auth.signInWithPopup(_googleAuthProvider);
      if(credential.user == null){
        return SignInResponse(
            error: SignInError.cancelled, user: null, providerId: null);
      }
      return SignInResponse(error: null, user: credential.user, providerId: null);
    } on FirebaseAuthException catch (e){
      return getSignInError(e);
    }

  }
}

import 'package:auto_matic/app/domain/repositories/account_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AccountRepositoryImpl extends AccountRepository{

  final FirebaseAuth _auth;

  AccountRepositoryImpl(this._auth);

  @override
  Future<User?> updateUserPassword(String newPassword) async {
    await _auth.currentUser!.updatePassword(newPassword);
    return _auth.currentUser;
  }

  @override
  Future<User?> updateDisplayName(String newName) async{
    await _auth.currentUser!.updateDisplayName(newName);
    return _auth.currentUser!;
  }
}
import 'package:firebase_auth/firebase_auth.dart';

abstract class AccountRepository{
  Future<User?> updateUserPassword(String newPassword);
  Future<User?> updateDisplayName(String newName);
}
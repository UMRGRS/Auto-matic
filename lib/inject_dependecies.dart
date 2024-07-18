import 'package:auto_matic/app/data/repositories_impl/authentication_repository_impl.dart';
import 'package:auto_matic/app/data/repositories_impl/sign_up_repository_impl.dart';
import 'package:auto_matic/app/domain/repositories/authentication_repository.dart';
import 'package:auto_matic/app/domain/repositories/sign_up_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter_meedu/flutter_meedu.dart';
import 'package:flutter_meedu/meedu.dart';

void injectDependencies() {
  Get.i.lazyPut<AuthenticationRepository>(
    () => AuthenticationRepositoryImpl(FirebaseAuth.instance),
  );
  Get.i.lazyPut<SignUpRepository>(
    () =>
        SignUpRepositoryImpl(FirebaseAuth.instance, FirebaseFirestore.instance),
  );
}

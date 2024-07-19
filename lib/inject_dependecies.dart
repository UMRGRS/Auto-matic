import 'package:auto_matic/app/data/repositories_impl/authentication_repository_impl.dart';
import 'package:auto_matic/app/data/repositories_impl/register_car_repository_impl.dart';
import 'package:auto_matic/app/domain/repositories/authentication_repository.dart';
import 'package:auto_matic/app/domain/repositories/register_car_repository.dart';
import 'package:auto_matic/app/domain/repositories/sign_up_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter_meedu/flutter_meedu.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'app/data/repositories_impl/sign_up_respository_impl.dart';

void injectDependencies() {
  Get.i.lazyPut<AuthenticationRepository>(
    () => AuthenticationRepositoryImpl(FirebaseAuth.instance, GoogleSignIn()),
  );
  Get.i.lazyPut<RegisterCarRepository>(
    () => RegisterCarRepositoryImpl(FirebaseFirestore.instance),
  );
  Get.i.lazyPut<SignUpRepository>(
    () => SignUpRepositoryImpl(FirebaseAuth.instance),
  );
}

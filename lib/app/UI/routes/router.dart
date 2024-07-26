import 'package:auto_matic/app/UI/routes/utils/check_auth.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

mixin RouterMixin on State<App> {
  //add error page
  final _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: Routes.landing,
        path: '/',
        redirect: (_, __) async {
          if (!kIsWeb) {
            return '/login';
          }
          return null;
        },
        builder: (_, __) => const Landing(),
      ),
      GoRoute(
        name: Routes.login,
        path: '/login',
        redirect: (_, __) async {
          bool auth = await isAuth();
          return auth ? '/profile' : null;
        },
        builder: (_, __) => const LogIn(),
      ),
      GoRoute(
        name: Routes.profile,
        path: '/profile',
        redirect: (_, __) async {
          bool auth = await isAuth();
          return auth ? null : '/login';
        },
        builder: (_, __) => const Profile(),
      ),
      GoRoute(
        name: Routes.registerCar,
        path: '/register-car',
        redirect: (_, __) async {
          bool auth = await isAuth();
          return auth ? null : '/login';
        },
        builder: (_, __) => const RegisterCar(),
      ),
      GoRoute(
        name: Routes.register,
        path: '/register',
        redirect: (_, __) async {
          bool auth = await isAuth();
          return auth ? '/profile' : null;
        },
        builder: (_, __) => const Register(),
      ),
      GoRoute(
        name: Routes.vehicleRD,
        path: '/vehicle-realtime',
        redirect: (_, __) async {
          bool auth = await isAuth();
          return auth ? null : '/login';
        },
        builder: (_, state){
          Map<String, dynamic> documentsReferences = state.extra as Map<String, dynamic>;
          return VehicleRD(references: documentsReferences);
        } ,
      ),
    ],
  );

  GoRouter get router => _router;
}

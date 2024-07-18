import 'package:auto_matic/app/config/config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_meedu/router.dart' as meedu_router;

mixin RouterMixin on State<App>{
  //add error page
  final _router = GoRouter(
    observers: [
      meedu_router.observer,
    ],
    initialLocation: '/splash',
    routes: [
      //We'll make splash redirect to login
      GoRoute(
        name: Routes.splash,
        path: '/splash',
        builder: (_, __) => const SplashPage(),
      ),
      GoRoute(
        name: Routes.landing,
        path: '/',
        builder: (_, __) => const Landing(),
      ),
      GoRoute(
        name: Routes.login,
        path: '/login',
        builder: (_, __) => const LogIn(),
      ),
      //--------------------
      //we will need user id
      //--------------------
      GoRoute(
        name: Routes.profile,
        path: '/profile',
        builder: (_, __) => Profile(),
      ),
      GoRoute(
        name: Routes.signup1,
        path: '/sign-up-1',
        builder: (_, __) => const SignUp1(),
      ),
      GoRoute(
        name: Routes.signup2,
        path: '/sign-up-2',
        builder: (_, __) => const SignUp2(),
      ),
      GoRoute(
        name: Routes.signup3,
        path: '/sign-up-3',
        builder: (_, __) => const SignUp3(),
      ),
      GoRoute(
        name: Routes.signup4,
        path: '/sign-up-4',
        builder: (_, __) => const SignUp4(),
      ),
      //--------------------
      //we will need vehicle id
      //--------------------
      GoRoute(
        name: Routes.vehicleRD,
        path: '/vehicle-realtime',
        builder: (_, __) => const VehicleRD(),
      ),
    ],
  );

  GoRouter get router => _router;
}

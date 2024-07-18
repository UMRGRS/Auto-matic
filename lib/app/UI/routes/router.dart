import 'package:auto_matic/app/UI/routes/utils/check_auth.dart';
import 'package:auto_matic/app/config/config.dart';
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
        builder: (_, __) => Profile(),
      ),
      GoRoute(
        name: Routes.signup1,
        path: '/sign-up-1',
        redirect: (_, __) async {
          bool auth = await isAuth();
          return auth ? '/profile' : null;
        },
        builder: (_, __) => const SignUp1(),
      ),
      GoRoute(
        name: Routes.signup2,
        path: '/sign-up-2',
        redirect: (_, __) async {
          bool auth = await isAuth();
          return auth ? '/profile' : null;
        },
        builder: (_, __) => const SignUp2(),
      ),
      GoRoute(
        name: Routes.signup3,
        path: '/sign-up-3',
        redirect: (_, __) async {
          bool auth = await isAuth();
          return auth ? '/profile' : null;
        },
        builder: (_, __) => const SignUp3(),
      ),
      GoRoute(
        name: Routes.signup4,
        path: '/sign-up-4',
        redirect: (_, __) async {
          bool auth = await isAuth();
          return auth ? '/profile' : null;
        },
        builder: (_, __) => const SignUp4(),
      ),
      GoRoute(
        name: Routes.vehicleRD,
        path: '/vehicle-realtime',
        redirect: (_, __) async {
          bool auth = await isAuth();
          return auth ? null : '/login';
        },
        builder: (_, __) => const VehicleRD(),
      ),
    ],
  );

  GoRouter get router => _router;
}

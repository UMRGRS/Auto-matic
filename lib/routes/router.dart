import 'package:auto_matic/config/config.dart';
import 'package:go_router/go_router.dart';

mixin RouterMixin on State<App> {
  //add error page
  final _router = GoRouter(
    routes: [
      GoRoute(
        name: Routes.landing,
        path: '/',
        builder: (_, __) => const Landing(),
      ),
      GoRoute(
        name: Routes.login,
        path: '/',
        builder: (_, __) => const LogIn(),
      ),
      GoRoute(
        name: Routes.profile,
        path: '/',
        builder: (_, __) => Profile(),
      ),
      GoRoute(
        name: Routes.signup1,
        path: '/signup',
        builder: (_, __) => const SignUp1(),
      ),
      GoRoute(
        name: Routes.signup2,
        path: '/signup',
        builder: (_, __) => const SignUp2(),
      ),
      GoRoute(
        name: Routes.signup3,
        path: '/signup',
        builder: (_, __) => const SignUp3(),
      ),
      GoRoute(
        name: Routes.signup4,
        path: '/signup',
        builder: (_, __) => const SignUp4(),
      ),
      GoRoute(
        name: Routes.vehiculeRD,
        path: '/signup',
        builder: (_, __) => const VehiculeRD(),
      ),
    ],
  );

  GoRouter get router => _router;
}

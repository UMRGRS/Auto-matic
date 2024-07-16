import 'package:auto_matic/config/config.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  final delegate = MyRouterDelegate(pages: [
    MyPage((_) => Landing(), path: '/'),
    MyPage((_) => SignUp1(), path: '/signup'),
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Auto-matic",
      theme: ThemeData(
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(color: Colors.white),
              color: Config.secondColor,
              elevation: 3,
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 25)),
          bottomAppBarTheme: const BottomAppBarTheme(
              color: Config.secondColor, elevation: 3, height: 50),
          fontFamily: 'Helvetica'),
      debugShowCheckedModeBanner: false,
      routerDelegate: delegate,
      routeInformationParser: MyRouteInformationParser(),
    );
  }
}

class MyPage {
  final String path;
  final Widget Function(Map<String, String> data) builder;

  MyPage(this.builder, {required this.path});
}

class MyRouterDelegate extends RouterDelegate<Uri>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final List<MyPage> pages;

  late List<Page> _naviagtorPages;

  MyRouterDelegate({required this.pages}) {
    final initialPage = pages.firstWhere((element) => element.path == '/');
    _naviagtorPages = [
      MaterialPage(
        name: '/',
        child: initialPage.builder({}),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: _naviagtorPages,
      onPopPage: (route, result) {
        if (route.didPop(result)) {
          _naviagtorPages.removeWhere(
            (element) => element.name == route.settings.name,
          );
          notifyListeners();
          return true;
        }
        return false;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(Uri configuration) async {
    final path = configuration.path;
    final data = <String, String>{};
    final index = pages.indexWhere(
      (e) {
        if (e.path == path) {
          return true;
        }
        if (e.path.contains('/:')) {
          final lastIndex = e.path.lastIndexOf('/:');
          final substring = e.path.substring(0, lastIndex);
          if (path.startsWith(substring)) {
            final String key = e.path.substring(lastIndex + 2, e.path.length);
            final String value = e.path.substring(lastIndex + 1, path.length);
            data[key] = value;
            return true;
          }
        }
        return false;
      },
    );

    if (index != -1) {
      _naviagtorPages = [
        ..._naviagtorPages,
        MaterialPage(
          name: path,
          child: pages[index].builder(data),
        ),
      ];
      notifyListeners();
    }
    print(configuration.path);
  }
  @override
  Uri? get currentConfiguration => Uri.parse(_naviagtorPages.last.name ?? '');

  @override
  GlobalKey<NavigatorState> get navigatorKey => GlobalKey<NavigatorState>();
}

class MyRouteInformationParser extends RouteInformationParser<Uri> {
  @override
  Future<Uri> parseRouteInformation(RouteInformation routeInformation) {
    return Future.value(
      Uri.parse(routeInformation.location),
    );
  }
  @override
  RouteInformation? restoreRouteInformation(Uri configuration) {
    return RouteInformation(location: configuration.toString());
  }
}

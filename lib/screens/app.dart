import 'package:auto_matic/config/config.dart';
import 'package:auto_matic/routes/router.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with RouterMixin{

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
      routerConfig: router,
    );
  }
}

import 'package:auto_matic/config/config.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Auto-matic",
      theme: ThemeData(
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(color: Colors.white),
              color: Config.secondColor,
              elevation: 3,
              titleTextStyle:
                  TextStyle(color: Colors.white, fontSize: 25)),
          bottomAppBarTheme: const BottomAppBarTheme(
              color: Config.secondColor, elevation: 3, height: 50),
          fontFamily: 'Helvetica'),
      debugShowCheckedModeBanner: false,
      home: Landing(),
    );
  }
}

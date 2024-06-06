import 'package:auto_matic/config/config.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Auto-matic",
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: AppBarTheme(
            iconTheme: const IconThemeData(color: Colors.white),
            color: Config.secondColor,
            elevation: 3,
            titleTextStyle: const TextStyle(color: Colors.white, fontSize: 25)),
        bottomAppBarTheme: BottomAppBarTheme(
            color: Config.secondColor, elevation: 3, height: 50),
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

import 'package:auto_matic/config/config.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Auto-matic",
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

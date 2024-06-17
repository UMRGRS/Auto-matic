import 'package:auto_matic/config/config.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.logo_dev),
        title: const Text("Auto-matic"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Config.firstColor,
        child: SingleChildScrollView(
          child: Profile(),
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        child: Center(
          child: Text(
            "Auto-matic",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

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
        color: Config.firstColor,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                  CreateAccountSection(),
                  SizedBox(width: 40),
                  AccessWithSocialMediaSection(),
                  SizedBox(width: 40),
                  TimelineWidget(currentPage: 4),
        ]),
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

import 'package:auto_matic/config/config.dart';
import 'package:auto_matic/screens/signup/widgets/indice.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.logo_dev),
        title: const Text("Auto-matic"),
      ),
      body: Scaffold(
        body: Container( child: Wrap(
          children: [
            Signup3(),
            SizedBox(
              height: 500,
            ),
            TimelineWidget(currentPage: 0)
          ],
        )),

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

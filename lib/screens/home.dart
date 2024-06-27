import 'package:auto_matic/config/config.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        color: Config.firstColor,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                //Change later for the appropriate screen
                child: Container(),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: const CustomBottomAppBar()
    );
  }
}

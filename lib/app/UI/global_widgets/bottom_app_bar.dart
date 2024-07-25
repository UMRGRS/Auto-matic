import 'package:auto_matic/app/config/config.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      child: Center(
        child: Text(
          "Auto-matic",
          style: TextStyle(color: Colors.white, fontFamily: "Lobster", fontSize: 20),
        ),
      ),
    );
  }
}

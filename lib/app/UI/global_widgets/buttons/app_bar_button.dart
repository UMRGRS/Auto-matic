import 'package:auto_matic/app/config/config.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({super.key, required this.text, required this.onPressed, this.color = Config.thirdColor});
  final String text;
  final VoidCallback onPressed;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5),
      child: CupertinoButton(
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 5)]),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Flex(
              direction: Axis.horizontal,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                      color: Colors.white, fontFamily: "Helvetica", fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

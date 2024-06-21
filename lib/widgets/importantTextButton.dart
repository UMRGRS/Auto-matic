import 'package:auto_matic/config/config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImportantTextButton extends StatelessWidget {
  const ImportantTextButton({super.key, required this.text, required this.onPressed, required this.iconPath});
  final String text;
  final VoidCallback onPressed;
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    return CupertinoButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      child: Container(

        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
            color: Config.fifthColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 5)]),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Flex(
            direction: Axis.horizontal,
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(iconPath, color: Colors.white,width: 20,),
              SizedBox(width: responsive.wp(0.5),),
              Text(
                text,
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: "Helvetica",
                    fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

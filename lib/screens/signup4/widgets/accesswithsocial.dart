import 'package:auto_matic/config/config.dart';
import 'package:sign_button/sign_button.dart';

// Sección de acceso con redes sociales
class AccessWithSocialMediaSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Accede con', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold, color: Config.secondColor)),
          SizedBox(height: 10),
          SignInButton(
              buttonType: ButtonType.google,
              onPressed: () {
              }),
        ],
      ),
    );
  }
}

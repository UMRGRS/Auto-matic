import 'package:auto_matic/config/config.dart';
import 'package:sign_button/sign_button.dart';

// Sección de acceso con redes sociales
class AccessWithSM extends StatelessWidget {
  const AccessWithSM({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Accede con',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )),
        const SizedBox(height: 10),
        SignInButton(
          buttonType: ButtonType.google,
          onPressed: () {},
          buttonSize: ButtonSize.large,
          btnText: "Registrate con Google",
          width: 280,
        ),
      ],
    );
  }
}

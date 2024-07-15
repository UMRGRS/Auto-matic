import 'package:auto_matic/config/config.dart';
import 'package:sign_in_button/sign_in_button.dart';

// Sección de acceso con redes sociales
class AccessWithSM extends StatelessWidget {
  const AccessWithSM({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Registrate con',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )),
        const SizedBox(height: 10),
        SignInButton(
          Buttons.googleDark,
          text: "Registrate con Google",
          onPressed: () {},
          clipBehavior: Clip.hardEdge,
        ),
      ],
    );
  }
}

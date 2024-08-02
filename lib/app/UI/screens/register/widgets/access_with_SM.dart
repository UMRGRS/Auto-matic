import 'package:auto_matic/app/UI/screens/logIn/utils/sign_in_with_google.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:sign_in_button/sign_in_button.dart';

class AccessWithSM extends StatelessWidget {
  const AccessWithSM({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          const Text(
            "Regístrate con",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          SignInButton(
            Buttons.googleDark,
            text: "Regístrate con Google",
            //Document this
            onPressed: () => signInWithGoogle(context),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "¿Ya tienes cuenta?",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          CupertinoButton(
            onPressed: () {
              //Document this
              context.pushReplacementNamed('login');
            },
            padding: EdgeInsets.zero,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                  color: Config.secondColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(color: Colors.black26, blurRadius: 5)
                  ]),
              child: const FittedBox(
                fit: BoxFit.scaleDown,
                child: Flex(
                  direction: Axis.horizontal,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Inicia sesión",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Helvetica",
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

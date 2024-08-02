import 'package:auto_matic/app/UI/screens/logIn/utils/send_log_in_form.dart';
import 'package:auto_matic/app/UI/screens/logIn/utils/sign_in_with_google.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:auto_matic/app/global_utils/email_validator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_meedu/flutter_meedu.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LogInForm extends StatelessWidget {
  const LogInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderListener(
      provider: loginProvider,
      builder: (_, controller) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Form(
                    key: controller.logInKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Iniciar sesión",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Correo electrónico",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomInputField(
                          label: "Correo electrónico",
                          inputType: TextInputType.emailAddress,
                          onChanged: controller.onEmailChange,
                          validator: (text) {
                            if (text == null) {
                              return "Correo electrónico inválido";
                            }
                            return isValidEmail(text)
                                ? null
                                : "Correo electrónico inválido";
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Contraseña",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomInputField(
                          isPassword: true,
                          onChanged: controller.onPasswordChange,
                          label: "Contraseña",
                          validator: (text) {
                            if (text == null) {
                              return "Contraseña inválida";
                            }
                            if (text.trim().length >= 8) {
                              return null;
                            }
                            return "Contraseña inválida";
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        CupertinoButton(
                          //Document this
                          onPressed: () => sendLogInForm(context),
                          padding: EdgeInsets.zero,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 8),
                            decoration: BoxDecoration(
                                color: Config.confirmGreen,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black26, blurRadius: 5)
                                ]),
                            child: const FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Flex(
                                direction: Axis.horizontal,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Iniciar sesión",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Helvetica",
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "O inicia sesión con",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SignInButton(
                          Buttons.googleDark,
                          text: "Inicia sesión con Google",
                          //Document this
                          onPressed: () => signInWithGoogle(context),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        kIsWeb
                            ? const Text(
                                "¿No tienes cuenta?",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )
                            : const SizedBox(
                                width: 0,
                                height: 0,
                              ),
                        kIsWeb
                            ? CupertinoButton(
                                onPressed: () {
                                  //Document this
                                  context.pushReplacementNamed('register');
                                },
                                padding: EdgeInsets.zero,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  decoration: BoxDecoration(
                                      color: Config.secondColor,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 5)
                                      ]),
                                  child: const FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Flex(
                                      direction: Axis.horizontal,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "Regístrate",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Helvetica",
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            : const SizedBox(
                                width: 0,
                                height: 0,
                              ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

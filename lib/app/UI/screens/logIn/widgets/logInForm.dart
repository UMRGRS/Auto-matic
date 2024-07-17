import 'package:auto_matic/app/config/config.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LogInForm extends StatelessWidget {
  const LogInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Iniciar sesión",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Usuario",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Usuario',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Contraseña",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Contraseña',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CupertinoButton(
                    onPressed: () {
                      context.pushNamed('profile');
                    },
                    padding: EdgeInsets.zero,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                          color: Config.confirmGreen,
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
              Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "O inicia sesión con",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SignInButton(
                      Buttons.googleDark,
                      text: "Inicia sesión con Google",
                      onPressed: () {
                        context.pushNamed('profile');
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "¿No tienes cuenta?",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    CupertinoButton(
                      onPressed: () {
                        context.pushNamed('sign-up-IV');
                      },
                      padding: EdgeInsets.zero,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
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
                                "Registrate",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Helvetica",
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

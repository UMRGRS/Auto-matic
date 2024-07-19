import 'package:auto_matic/app/config/config.dart';

void cleanVIN(BuildContext context) {
  showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
            title: const Text(
              "¿Estás seguro?",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            content: const Text(
                "Verfica que los datos sean correctos no podras modificarlos mas adelante"),
            actions: [
              CupertinoDialogAction(
                onPressed: () {
                  context.pop();
                },
                child: const Text(
                  "Cancelar",
                  style: TextStyle(color: Colors.red),
                ),
              ),
              CupertinoDialogAction(
                onPressed: () {
                  context.pushReplacementNamed('sign-up-IV');
                },
                child: const Text(
                  "Continuar",
                  style: TextStyle(color: Config.confirmGreen),
                ),
              ),
            ],
          ));
}

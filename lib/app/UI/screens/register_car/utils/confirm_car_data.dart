import 'package:auto_matic/app/UI/screens/register_car/utils/send_car_form.dart';
import 'package:auto_matic/app/config/config.dart';

void confirmCarData(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: const Text(
              "¿Estás seguro?",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            content: const Text(
                "Verfica que los datos sean correctos no podras modificarlos mas adelante"),
            actions: [
              AppBarButton(
                text: "Continuar",
                onPressed: () async => await sendCarForm(context),
                color: Config.confirmGreen,
              ),
              AppBarButton(
                text: "Cancelar",
                onPressed: () => context.pop(),
                color: Config.fifthColor,
              ),
            ],
          ));
}

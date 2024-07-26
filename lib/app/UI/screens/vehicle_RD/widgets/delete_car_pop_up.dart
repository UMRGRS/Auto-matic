import 'package:auto_matic/app/UI/screens/vehicle_RD/utils/delete_car_documents.dart';
import 'package:auto_matic/app/config/config.dart';

Future<void> showDeleteCarPopUp(
    BuildContext context, Map<String, dynamic> references) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text("¿Estas seguro?"),
      content: const Column(mainAxisSize: MainAxisSize.min, children: [
        Text(
            "Esta acción es irreversible, para obtener la información de este vehículo tendras que volver a registrarlo")
      ]),
      actions: [
        AppBarButton(
          text: "Confirmar",
          onPressed: () => deleteCarDocuments(context, references),
          color: Config.confirmGreen,
        ),
        AppBarButton(
          text: "Cancelar",
          onPressed: () => context.pop(),
          color: Config.fifthColor,
        ),
      ],
    ),
  );
}

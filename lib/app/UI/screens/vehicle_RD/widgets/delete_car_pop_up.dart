import 'package:auto_matic/app/UI/screens/vehicle_RD/utils/delete_car_documents.dart';
import 'package:auto_matic/app/config/config.dart';

//Document this
Future<void> showDeleteCarPopUp(
    BuildContext context, Map<String, dynamic> references) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text("¿Estás seguro?"),
      content: const Column(mainAxisSize: MainAxisSize.min, children: [
        Text(
            "Esta acción es irreversible. Para obtener la información de este vehículo, tendrás que volver a registrarlo.")
      ]),
      actions: [
        AppBarButton(
          text: "Confirmar",
          //Document this
          onPressed: () => deleteCarDocuments(context, references),
          color: Config.confirmGreen,
        ),
        AppBarButton(
          text: "Cancelar",
          //Document this
          onPressed: () => context.pop(),
          color: Config.fifthColor,
        ),
      ],
    ),
  );
}

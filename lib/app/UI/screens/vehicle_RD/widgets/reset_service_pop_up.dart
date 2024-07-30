import 'package:auto_matic/app/UI/screens/vehicle_RD/utils/reset_service.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> showResetServicePopUp(
    BuildContext context, DocumentReference reference) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text("¡Aviso!"),
      content: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
              "Solo resetea el servicio después de que tu mecánico lo haya realizado. Resetear el servicio es una acción irreversible. ¿Deseas continuar?")
        ],
      ),
      actions: [
        AppBarButton(
          text: "Confirmar",
          onPressed: () => resetService(context, reference),
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

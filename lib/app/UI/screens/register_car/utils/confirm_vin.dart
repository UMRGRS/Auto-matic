import 'package:auto_matic/app/UI/global_widgets/dialogs/dialogs.dart';
import 'package:auto_matic/app/UI/global_widgets/dialogs/progress_dialog.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:auto_matic/app/data/data_source/remote/vin_api_call.dart';
import 'package:auto_matic/app/domain/responses/api_vin_response.dart';

void confirmVIN(BuildContext context) async {
  final controller = registerCarProvider.read;
  final isValidForm = controller.keyVIN.currentState!.validate();
  if (isValidForm) {
    ProgressDialog.show(context);
    ApiVinResponse response = await Api.get(controller.state.carVIN);
    context.pop();
    if (response.error == null) {
      controller.onCarModelChanged(response.model!);
      controller.onCarMadeChanged(response.make!);
      controller.onYearChanged(response.year!);
      context.pushReplacementNamed('sign-up-III');
    } else {
      String content = "";
      switch (response.error) {
        case "Not Found":
          content =
              "No se encontró información para este VIN verificalo e intenta de nuevo";
        case "INCORRECT_PARAMS":
          content = "El VIN es incorrecto verificalo e intenta de nuevo";
        default:
          content = "Ocurrio un error, verifica el VIN e intenta de nuevo";
      }
      Dialogs.showAlert(context, title: "Error", content: content);
    }
  }
}

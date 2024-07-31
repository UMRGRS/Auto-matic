import 'package:auto_matic/app/UI/global_widgets/dialogs/dialogs.dart';
import 'package:auto_matic/app/UI/global_widgets/dialogs/progress_dialog.dart';
import 'package:auto_matic/app/config/config.dart';

Future<void> sendCarForm(BuildContext context) async{
  final controller = registerCarProvider.read;
  ProgressDialog.show(context);
  final response = await controller.submitCar();
  context.pop();
  if(response.error!=null){
    Dialogs.showAlert(title: "Error", content: "Hubo un error intentalo mas tarde", context: context);
  }else{
    context.pushReplacementNamed('profile');
  }
}
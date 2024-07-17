import 'package:auto_matic/app/UI/global_widgets/dialogs/progress_dialog.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:auto_matic/app/domain/responses/sign_up_response.dart';

import '../../../global_widgets/dialogs/dialogs.dart';

Future<void> sendRegisterForm(BuildContext context) async{
  final controller = registerProvider.read;
  final isValidForm = controller.formKey.currentState!.validate();
  if(isValidForm){
    ProgressDialog.show(context);
    final response = await controller.submit();
    context.pop();
    if(response.error!=null){
      String content = "";
      switch(response.error!){
        case SignUpError.emailAlreadyInUse:
          content = "Ya existe una cuenta con ese correo";
        case SignUpError.weakPassword:
          content = "Tu contraseña es muy debil";
        case SignUpError.unknow:
          content = "Error desconocido";
      }
      Dialogs.showAlert(context, title: "Error", content: content);
    }else{
      context.pushReplacementNamed("profile");
    }
  }
  else{
    Dialogs.showAlert(context, title: "Error", content: "Campos invalidos");
  }
}
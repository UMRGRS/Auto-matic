import 'package:auto_matic/app/config/config.dart';

void confirmUniqueCode(BuildContext context){
  final controller = registerCarProvider.read;
  final isValidForm = controller.uniqueCodeKey.currentState!.validate();
  if(isValidForm){
    context.pushNamed('sign-up-II');
  }
}
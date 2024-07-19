import 'package:auto_matic/app/UI/screens/register/controller/register_controller.dart';
import 'package:auto_matic/app/UI/screens/register/utils/send_register_form.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:auto_matic/app/global_utils/password_validator.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

import 'package:auto_matic/app/global_utils/email_validator.dart';
import 'package:auto_matic/app/global_utils/name_validator.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});
  @override
  Widget build(BuildContext context) {
    return ProviderListener<RegisterController>(
        provider: registerProvider,
        builder: (_, controller) {
          return Form(
            key: controller.formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          const Text('Crear cuenta',
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 10),
                          CustomInputField(
                            label: 'Nombre',
                            onChanged: controller.onNameChanged,
                            validator: (text) {
                              if (text == null) return "Nombre invalido";
                              return isValidName(text) ? null : "Nombre invalido";
                            },
                          ),
                          const SizedBox(height: 20),
                          CustomInputField(
                            label: 'Apellido',
                            onChanged: controller.onLastNameChanged,
                            validator: (text) {
                              if (text == null) return "Apellido invalido";
                              return isValidName(text)
                                  ? null
                                  : "Apellido invalido";
                            },
                          ),
                          const SizedBox(height: 20),
                          CustomInputField(
                            label: 'Correo electronico',
                            inputType: TextInputType.emailAddress,
                            onChanged: controller.onEmailChanged,
                            validator: (text) {
                              if (text == null) {
                                return "Correo electronico invalido";
                              }
                              return isValidEmail(text)
                                  ? null
                                  : "Correo electronico invalido";
                            },
                          ),
                          const SizedBox(height: 20),
                          CustomInputField(
                            label: 'Contraseña',
                            onChanged: controller.onPasswordChanged,
                            isPassword: true,
                            validator: (text) {
                              if (text == null) return "Contraseña invalida";
                              return isValidPassword(text);
                            },
                          ),
                          const SizedBox(height: 20),
                          Consumer(builder: (_, watch, __) {
                            watch(registerProvider
                                .select((state) => state.password));
                            return CustomInputField(
                              label: 'Verfica tu contraseña',
                              onChanged: controller.onVPasswordChanged,
                              isPassword: true,
                              validator: (text) {
                                if (text == null) return "Contraseña invalida";
                                if (controller.state.password != text) {
                                  return "Las contraseñas no coinciden";
                                }
                                if (text.trim().length >= 8) {
                                  return null;
                                }
                                return "Contraseña invalida";
                              },
                            );
                          }),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () => sendRegisterForm(context),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Config.confirmGreen,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: const Text(
                                    'Continuar',
                                    style: TextStyle(
                                      color: Colors
                                          .white, // Cambia el valor hexadecimal aquí
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15,),
                          const AccessWithSM()
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          );
        });
  }
}

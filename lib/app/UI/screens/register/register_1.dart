import 'package:auto_matic/app/UI/screens/register/utils/confirm_unique_code.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

import 'controller/register_controller.dart';
import 'controller/register_state.dart';

final registerProvider = StateProvider<RegisterController, RegisterState>(
        (_) => RegisterController());

class SignUp1 extends StatelessWidget {
  const SignUp1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          actions: [
            AppBarButton(
              text: "Iniciar sesión",
              onPressed: () {
                context.pushNamed('login');
              },
            ),
            AppBarButton(
              text: "Cancelar",
              onPressed: () {
                context.pushNamed('landing');
              },
              color: Config.fifthColor,
            ),
          ],
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            padding: const EdgeInsets.all(10),
            color: Config.firstColor,
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(minHeight: constraints.maxHeight),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProviderListener<RegisterController>(
                            provider: registerProvider,
                            builder: (_, controller) {
                              return Form(
                                key: controller.uniqueCodeKey,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      children: [
                                        Flexible(
                                          child: Column(
                                            children: [
                                              Text(
                                                'Introduce el código único del producto',
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 30,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        InfoButton(),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    CustomInputField(
                                      label: "Código unico (16 caracteres)",
                                      onChanged: controller.onUniqueCodeChanged,
                                      maxLength: 16,
                                      validator: (text) {
                                        if (text == null) {
                                          return "El codigo no puede estar vacío";
                                        }
                                        if (text.trim().length < 16) {
                                          return "El codigo tiene que ser de 16 caracteres y no contener espacios vacíos";
                                        }
                                        return null;
                                      },
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    ElevatedButton(
                                      onPressed: () =>
                                          confirmUniqueCode(context),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Config.confirmGreen,
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          'Continuar',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                        const TimeLine(
                          value: 0,
                        ), // Línea de tiempo
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        bottomNavigationBar: const CustomBottomAppBar());
  }
}

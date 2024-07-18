import 'package:auto_matic/app/UI/screens/register/utils/confirm_vin.dart';
import 'package:auto_matic/app/UI/screens/register/utils/vin_validator.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

class SignUp2 extends StatelessWidget {
  const SignUp2({super.key});

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
                        ProviderListener(
                            provider: registerProvider,
                            builder: (_, controller) {
                              return Form(
                                key: controller.keyVIN,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      children: [
                                        Flexible(
                                          child: Column(
                                            children: [
                                              Text(
                                                "Introduce el VIN del vehículo",
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
                                      onChanged: controller.onCarVINChanged,
                                      label: "VIN del vehículo (17 caracteres)",
                                      maxLength: 17,
                                      validator: (text) {
                                        if (text == null) {
                                          return "El VIN no puede estar vacío";
                                        }
                                        if (text.trim().length < 17) {
                                          return "No puede contener caracteres vacíos";
                                        }
                                        return isValidVIN(text);
                                      },
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    ElevatedButton(
                                      onPressed: () => confirmVIN(context),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Config.confirmGreen,
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text('Continuar',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15)),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                        const TimeLine(
                          value: 10,
                        )
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

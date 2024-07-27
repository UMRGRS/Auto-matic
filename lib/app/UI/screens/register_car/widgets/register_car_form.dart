import 'package:auto_matic/app/UI/screens/register_car/controller/register_car_controller.dart';
import 'package:auto_matic/app/UI/screens/register_car/utils/confirm_form.dart';
import 'package:auto_matic/app/UI/screens/register_car/utils/vin_validator.dart';
import 'package:auto_matic/app/UI/screens/register_car/widgets/unique_code_pop_up.dart';
import 'package:auto_matic/app/config/config.dart';

import 'find_vin_pop_up.dart';

class RegisterCarForm extends StatelessWidget {
  const RegisterCarForm({
    super.key,
    required this.controller,
    required this.changeVisibility,
    required this.updateTimeLine,
  });

  final RegisterCarController controller;
  final VoidCallback changeVisibility;
  final void Function(double) updateTimeLine;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
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
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              InfoButton(showFunction: showUniqueCodePopUp),
            ],
          ),
          const SizedBox(
            height: 5,
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
            height: 20,
          ),
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
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              InfoButton(showFunction: showFindVinPopUp,),
            ],
          ),
          const SizedBox(
            height: 5,
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
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              confirmForm(
                context,
                changeVisibility: changeVisibility,
                updateTimeLine: updateTimeLine,
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Config.confirmGreen,
            ),
            child: const Text('Continuar',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
          ),
        ],
      ),
    );
  }
}

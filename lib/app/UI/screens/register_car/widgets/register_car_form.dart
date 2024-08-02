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
                      "Introduce el código único del producto",
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
            label: "Código único (16 caracteres)",
            //Document this
            onChanged: controller.onUniqueCodeChanged,
            maxLength: 16,
            //Document this
            validator: (text) {
              if (text == null) {
                return "El código no puede estar vacío";
              }
              if (text.trim().length < 16) {
                return "El código debe contener 16 caracteres y no tener espacios en blanco.";
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
              InfoButton(
                showFunction: showFindVinPopUp,
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          CustomInputField(
            //Document this
            onChanged: controller.onCarVINChanged,
            label: "VIN del vehículo (17 caracteres)",
            maxLength: 17,
            //Document this
            validator: (text) {
              if (text == null) {
                return "El VIN no puede estar vacío";
              }
              if (text.trim().length < 17) {
                return "No puede contener espacio en blanco";
              }
              return isValidVIN(text);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              //Document this
              confirmForm(
                context,
                changeVisibility: changeVisibility,
                updateTimeLine: updateTimeLine,
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Config.confirmGreen,
            ),
            child: const Text(
              "Continuar",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}

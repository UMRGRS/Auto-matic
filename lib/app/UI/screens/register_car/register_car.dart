import 'package:auto_matic/app/UI/screens/register_car/controller/register_car_controller.dart';
import 'package:auto_matic/app/UI/screens/register_car/controller/register_car_state.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

final registerCarProvider =
    StateProvider<RegisterCarController, RegisterCarState>(
        (_) => RegisterCarController());

class RegisterCar extends StatefulWidget {
  const RegisterCar({super.key});
  @override
  State<RegisterCar> createState() => _RegisterCarState();
}

class _RegisterCarState extends State<RegisterCar> {
  bool visible = true;
  double value = 1.5;

  @override
  Widget build(BuildContext context) {
    void setTimeLineValue(double val) {
      value = val;
      setState(() {});
    }

    void setVisibility() {
      visible = !visible;
      setState(() {});
    }

    return Scaffold(
        appBar: CustomAppBar(
          actions: [
            AppBarButton(
              text: "Cancelar",
              onPressed: () {},
              color: Config.fifthColor,
            ),
          ],
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            padding: const EdgeInsets.all(16),
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Registra tu vehículo",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                )),
                            ProviderListener<RegisterCarController>(
                              provider: registerCarProvider,
                              builder: (_, controller) {
                                return Visibility(
                                  visible: visible,
                                  replacement: CarDataBox(
                                    controller: controller,
                                    changeVisibility: setVisibility,
                                    updateTimeLine: setTimeLineValue,
                                  ),
                                  child: RegisterCarForm(
                                    controller: controller,
                                    changeVisibility: setVisibility,
                                    updateTimeLine: setTimeLineValue,
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        TimeLine(value: value),
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

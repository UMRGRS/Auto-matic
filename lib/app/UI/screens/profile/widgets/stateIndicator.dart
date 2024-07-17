import 'package:auto_matic/app/config/config.dart';

import 'package:flutter_svg/flutter_svg.dart';

class StateIndicator extends StatefulWidget {
  const StateIndicator({super.key, required this.state});
  final vehiculeState state;

  @override
  State<StateIndicator> createState() => _StateIndicatorState();
}

class _StateIndicatorState extends State<StateIndicator> {
  _StateIndicatorState();

  late final Map<String, dynamic> data;
  @override
  void initState() {
    super.initState();
    data = Config.VehiculeStates[widget.state]!;
  }

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    bool isScreenWide = responsive.width >= 600;
    return Card(
      child: FittedBox(
        fit: BoxFit.fill,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: data["color"]),
                child: SvgPicture.asset(data["iconPath"], color: Colors.white, height: responsive.ip(1.6),),
              ),
              Builder(
                builder: (_) {
                  if (isScreenWide) {
                    return Row(
                      children: [
                        SizedBox(
                          width: responsive.wp(1),
                        ),
                        (Text(data["text"])),
                      ],
                    );
                  } else {
                    return (const SizedBox.shrink());
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

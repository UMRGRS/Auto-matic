import 'package:auto_matic/app/config/config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class TimeLine extends StatefulWidget {
  const TimeLine({super.key, required this.value});
  final double value;
  @override
  State<TimeLine> createState() => _TimeLineState();
}

class _TimeLineState extends State<TimeLine> {
  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    return SfLinearGauge(
      showTicks: false,
      minimum: 0,
      maximum: 30,
      labelOffset: 15,
      axisTrackStyle: const LinearAxisTrackStyle(color: Colors.grey, thickness: 10),
      onGenerateLabels: () {
        return <LinearAxisLabel>[
          const LinearAxisLabel(text: 'Código único', value: 0),
          const LinearAxisLabel(text: 'VIN', value: 10),
          const LinearAxisLabel(text: 'Confirmar datos', value: 20),
          const LinearAxisLabel(text: 'Crear cuenta', value: 30),
        ];
      },
      axisLabelStyle:
          TextStyle(fontSize: responsive.ip(1.35), color: Colors.black),
      barPointers: <LinearBarPointer>[
        LinearBarPointer(
          //Modify this to change the value
          value: widget.value,
          color: Config.secondColor,
          enableAnimation: false,
          thickness: 10,
        ),
      ],
      markerPointers: [
        const LinearShapePointer(
          value: 0,
          enableAnimation: false,
          color: Config.secondColor,
          width: 24,
          height: 24,
          position: LinearElementPosition.cross,
          shapeType: LinearShapePointerType.circle,
        ),
        LinearShapePointer(
          value: 10,
          enableAnimation: false,
          color: widget.value >= 10 ? Config.secondColor : Colors.grey,
          width: 24,
          height: 24,
          position: LinearElementPosition.cross,
          shapeType: LinearShapePointerType.circle,
        ),
        LinearShapePointer(
          value: 20,
          enableAnimation: false,
          color: widget.value >= 20 ? Config.secondColor : Colors.grey,
          width: 24,
          height: 24,
          position: LinearElementPosition.cross,
          shapeType: LinearShapePointerType.circle,
        ),
        LinearShapePointer(
          value: 30,
          enableAnimation: false,
          color: widget.value >= 30 ? Config.secondColor : Colors.grey,
          width: 24,
          height: 24,
          position: LinearElementPosition.cross,
          shapeType: LinearShapePointerType.circle,
        ),
        LinearWidgetPointer(
            enableAnimation: false,
            value: widget.value,
            position: LinearElementPosition.outside,
            offset: 10,
            child: SizedBox(
              height: 40,
              width: 40,
              child: SvgPicture.asset("assets/pages/vehiculeRD/icons/car.svg",),
            )),
      ],
    );
  }
}

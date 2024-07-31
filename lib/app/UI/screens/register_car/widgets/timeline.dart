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
      showLabels: false,
      minimum: 1,
      maximum: 3,
      labelOffset: 15,
      axisTrackStyle:
          const LinearAxisTrackStyle(color: Colors.grey, thickness: 10),
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
          value: 1.5,
          enableAnimation: false,
          color: Config.secondColor,
          width: 24,
          height: 24,
          position: LinearElementPosition.cross,
          shapeType: LinearShapePointerType.circle,
        ),
        LinearShapePointer(
          value: 2.5,
          enableAnimation: false,
          color: widget.value >= 2 ? Config.secondColor : Colors.grey,
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
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset(
                "assets/pages/vehicle_RD/icons/car.svg",
                height: 40,
              ),
            ),
          ),
        ),
        LinearWidgetPointer(
          enableAnimation: false,
          value: widget.value,
          position: LinearElementPosition.inside,
          offset: 20,
          child: Card(
              child: Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Paso ${widget.value.floor()}/2",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          )),
        ),
      ],
    );
  }
}

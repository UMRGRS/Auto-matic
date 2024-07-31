import 'package:auto_matic/app/config/config.dart';
import 'dart:math' as math;

class Responsive{
  final double height, width, inch;

  Responsive(this.height, this.width, this.inch);

  static Responsive of(BuildContext context){
    final MediaQueryData data = MediaQuery.of(context);
    final size = data.size;
    final inch = math.sqrt(math.pow(size.height, 2) + math.pow(size.width, 2));
    return Responsive(size.height, size.width, inch);
  }

  double wp(double percent){
    return width*percent/100;
  }

  double hp(double percent){
    return height*percent/100;
  }

  double ip(double percent){
    return inch*percent/100;
  }

}
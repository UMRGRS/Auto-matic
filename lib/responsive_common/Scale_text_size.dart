import 'dart:math';

import 'package:auto_matic/config/config.dart';

class ScaleTextSize {
  static double textScaleFactor(BuildContext context, {double maxTextScaleFactor = 2}) {
    final width = MediaQuery.of(context).size.width;
    double val = (width / 800) * maxTextScaleFactor;
    return max(1, min(val, maxTextScaleFactor));
  }
}
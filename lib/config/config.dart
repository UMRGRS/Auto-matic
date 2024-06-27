library config.globals;

import 'package:flutter/material.dart';
export 'package:flutter/material.dart';

////Se importa y exporta los widgets generales
import 'package:auto_matic/widgets/widgets.dart';
export 'package:auto_matic/widgets/widgets.dart';

////Se importa y exporta las pantallas
import 'package:auto_matic/screens/screens.dart';
export 'package:auto_matic/screens/screens.dart';

class Config{
    static Color firstColor = const Color.fromRGBO(224, 221, 207, 1);
    static Color secondColor = const Color.fromRGBO(31, 1, 185, 1);
    static Color thirdColor = const Color.fromRGBO(153, 143, 199, 1);
    static Color fourthColor = const Color.fromRGBO(71, 68, 72, 1);
    static Color fifthColor = const Color.fromRGBO(186, 45, 11, 1);
}
import 'package:auto_matic/config/config.dart';

class TimelineWidget extends StatelessWidget {
  final int currentPage;
  TimelineWidget({required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final screenWidth = constraints.maxWidth;
      final screenHeight = constraints.maxHeight;

      // Ajusta el tamaño de los elementos según el tamaño de la pantalla
      final avatarSize = screenWidth * 0.024;
      final textSize = screenWidth * 0.01;
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: currentPage == 1 ? Config.fifthColor : Config.firstColor,
                borderRadius: BorderRadius.circular(9),
              ),
              padding: EdgeInsets.all(4),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: currentPage == 1
                        ? Colors.deepOrange
                        : Colors.deepOrange,
                    radius: avatarSize,
                    child: Text('1', style: TextStyle(fontSize: textSize)),
                  ),
                  Text(
                    'Código Único',
                    style: TextStyle(
                      color:
                          currentPage == 1 ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: textSize,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //...
          Flexible(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Config.firstColor,
                borderRadius: BorderRadius.circular(9),
              ),
              padding: EdgeInsets.all(4),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.deepOrange,
                    radius: avatarSize,
                    child: Text('2', style: TextStyle(fontSize: textSize)),
                  ),
                  Text(
                    'Datos del Vehiculo',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: textSize,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //...
          Flexible(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: currentPage == 4 ? Config.fifthColor : Config.firstColor,
                borderRadius: BorderRadius.circular(9),
              ),
              padding: EdgeInsets.all(4),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: currentPage == 4
                        ? Colors.deepOrange
                        : Colors.deepOrange,
                    radius: avatarSize,
                    child: Text('3', style: TextStyle(fontSize: textSize)),
                  ),
                  Text(
                    'Datos del usuario',
                    style: TextStyle(
                      color: currentPage == 4 ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: textSize,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    });
  }
}

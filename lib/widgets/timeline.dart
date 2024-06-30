import 'package:auto_matic/config/config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Timeline extends StatelessWidget {
  final int currentPage;
  Timeline({required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final screenWidth = constraints.maxWidth;

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
                color: currentPage == 0 ? Config.fifthColor : Colors.white,
                borderRadius: BorderRadius.circular(9),
              ),
              padding: EdgeInsets.all(4),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: currentPage == 0
                        ? Colors.deepOrange
                        : Colors.deepOrange,
                    radius: avatarSize,
                    child: Text('1', style: TextStyle(fontSize: textSize)),
                  ),
                  Text(
                    'Código Único',
                    style: TextStyle(
                      color:
                      currentPage == 0 ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: textSize,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SvgPicture.asset("assets/pages/signup/icons/arrow.svg",width: 20,height: 70,),
          //...
          Flexible(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: currentPage == 1 ? Config.fifthColor : Colors.white,
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
                    child: Text('2', style: TextStyle(fontSize: textSize)),
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
          SvgPicture.asset("assets/pages/signup/icons/arrow.svg",width: 20,height: 70,),

          Flexible(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: currentPage == 2 ? Config.fifthColor : Colors.white,
                borderRadius: BorderRadius.circular(9),
              ),
              padding: EdgeInsets.all(4),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: currentPage == 2
                        ? Colors.deepOrange
                        : Colors.deepOrange,
                    radius: avatarSize,
                    child: Text('3', style: TextStyle(fontSize: textSize)),
                  ),
                  Text(
                    'Datos del usuario',
                    style: TextStyle(
                      color: currentPage == 2 ? Colors.white : Colors.black,
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
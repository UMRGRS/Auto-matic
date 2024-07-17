import 'package:auto_matic/app/UI/screens/splash/splash_controller.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

final splashProvider = SimpleProvider(
  (_) => SplashController(),
);

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderListener(provider: splashProvider, builder: (_,__){
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            color: Config.secondColor,
          ),
        ),
      );
    }, onChange: (_,controller){
      final routeName = controller.routeName;
      if(routeName!=null){
        context.pushReplacementNamed(routeName);
      }
    },);
  }
}

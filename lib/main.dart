import 'package:auto_matic/config/config.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  final preferences = await SharedPreferences.getInstance();
  runApp(Provider(
    create: (context) => SessionController(preferences),
    child: const App(),
  ));
}

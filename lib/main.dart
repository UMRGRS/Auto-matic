import 'package:auto_matic/config/config.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_strategy/url_strategy.dart';

//Firebase imports
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void initFirebase() async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  initFirebase();
  setPathUrlStrategy();
  final preferences = await SharedPreferences.getInstance();
  runApp(Provider(
    create: (context) => SessionController(preferences),
    child: const App(),
  ));
}

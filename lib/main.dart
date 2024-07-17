import 'package:auto_matic/app/config/config.dart';
import 'package:auto_matic/inject_dependecies.dart';
import 'package:url_strategy/url_strategy.dart';

//Firebase imports
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setPathUrlStrategy();
  injectDependencies();
  runApp(const App());
}

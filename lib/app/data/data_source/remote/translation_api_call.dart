import 'package:google_cloud_translation/google_cloud_translation.dart';

void Translate() async{
  Translation _translation = Translation(
    apiKey: 'AIzaSyCnIkzU_80jd2V8FH0bd_-l19U1hWEFcvs',
  );
  final translated = await _translation.translate(text: "Hello world!", to: 'es');
  print(translated.translatedText);
}
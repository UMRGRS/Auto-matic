import 'package:auto_matic/app/domain/responses/translation_api_response.dart';
import 'package:google_cloud_translation/google_cloud_translation.dart';

Future<TranslationApiResponse> translate(String text) async{
  String? translatedText, error;
  Translation _translation = Translation(
    apiKey: 'AIzaSyCnIkzU_80jd2V8FH0bd_-l19U1hWEFcvs',
    onError: (_){
      translatedText = null;
      error = "Hubo un error";
    }
  );
  final translated = await _translation.translate(text: text, to: 'es');
  translatedText = translated.translatedText;
  return TranslationApiResponse(translatedText: translatedText, error: error);
}
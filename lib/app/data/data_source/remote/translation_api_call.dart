import 'package:auto_matic/app/domain/responses/translation_api_response.dart';
import 'package:google_cloud_translation/google_cloud_translation.dart';

Future<TranslationApiResponse> translate(String text) async{
  String? translatedText, error;
  Translation _translation = Translation(
    apiKey: '',
    onError: (_){
      translatedText = null;
      error = "Hubo un error";
    }
  );
  final translated = await _translation.translate(text: text, to: 'es');
  translatedText = translated.translatedText;
  return TranslationApiResponse(translatedText: translatedText, error: error);
}

import 'dart:convert';

import 'package:auto_matic/app/data/data_source/remote/translation_api_call.dart';
import 'package:auto_matic/app/domain/responses/failure_codes_api_response.dart';
import 'package:http/http.dart' as http;

Future<FailureCodesApiResponse> getFailureCodeData(String code) async {
  http.Client client = http.Client();
  http.Response data;

  Uri url = Uri.parse('https://car-code.p.rapidapi.com/obd2/$code');

  Map<String, String> headers = {
    "x-rapidapi-host": "",
    "x-rapidapi-key": "",
  };

  try {
    data = await client.get(url, headers: headers);
    if (data.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(data.body.toString());
      final definition = await translate(json['definition']);
      if (definition.error != null) {
        return FailureCodesApiResponse(
          definition: null,
          causes: null,
          error: "Hubo un error intenta mas tarde",
        );
      }
      final causes = await getCauses(json['cause']);
      print(causes.toString());
      return FailureCodesApiResponse(
        definition: definition.translatedText,
        causes: causes,
        error: null,
      );
    } else if (data.statusCode == 400) {
      return FailureCodesApiResponse(
        definition: null,
        causes: null,
        error: "No se encontro el codigo en la base de datos",
      );
    } else {
      return FailureCodesApiResponse(
        definition: null,
        causes: null,
        error: "No se encontro el codigo en la base de datos",
      );
    }
  } catch (error) {
    return FailureCodesApiResponse(
      definition: null,
      causes: null,
      error: error.toString(),
    );
  } finally {
    client.close();
  }
}

Future<List<String>?> getCauses(List<dynamic> causes) async{
  List<String> cau = [];
  for (int i = 0; i < causes.length; i++) {
    final translated = await translate(causes[i]);
    if(translated.error!=null){
      return null;
    }
    cau.add(translated.translatedText!);
  }
  return cau;
}

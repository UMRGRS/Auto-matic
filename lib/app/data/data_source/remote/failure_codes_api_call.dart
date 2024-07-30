
import 'dart:convert';

import 'package:auto_matic/app/domain/responses/failure_codes_api_response.dart';
import 'package:http/http.dart' as http;

Future<FailureCodesApiResponse> getFailureCodeData(String code) async {
  http.Client client = http.Client();
  http.Response data;

  Uri url = Uri.parse('https://car-code.p.rapidapi.com/obd2/$code');

  Map<String, String> headers = {
    "x-rapidapi-host": "car-code.p.rapidapi.com",
    "x-rapidapi-key": "64ab7c3ddfmsha48c0f4a2de946fp16fe8fjsnda0cc4a66ed4",
  };

  try {
    data = await client.get(url, headers: headers);
    if (data.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(data.body.toString());
      return FailureCodesApiResponse(
        definition: json['definition'],
        causes: json['cause'],
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

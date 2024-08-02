import 'dart:convert';

import 'package:auto_matic/app/domain/responses/api_vin_response.dart';
import 'package:http/http.dart' as http;

Future<ApiVinResponse> getVinData(String vin) async {
  const String apiKey = '';

  http.Client client = http.Client();
  http.Response data;
  Uri url = Uri.parse('https://auto.dev/api/vin/$vin?apikey=$apiKey');
  try {
    data = await client.get(url);
    if (data.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(data.body.toString());
      if (json.containsKey('errorType')) {
        return ApiVinResponse(
          model: null,
          make: null,
          year: null,
          error: json['errorType'],
        );
      }
      return ApiVinResponse(
        model: json['model']['name'],
        make: json['make']['name'],
        year: json['years'][0]['year'].toString(),
        error: null,
      );
    } else {
      return ApiVinResponse(
          model: null,
          make: null,
          year: null,
          error: "Error: ${data.statusCode}");
    }
  } catch (error) {
    return ApiVinResponse(model: null, make: null, year: null, error: "$error");
  } finally {
    client.close();
  }
}

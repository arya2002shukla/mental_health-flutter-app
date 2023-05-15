import 'dart:convert';
import 'package:mental_health/util/constant.dart';
import 'package:http/http.dart' as http;

Future<String> generateResponse(String prompt) async {
  const apiKey = apiSecretKey;

  var url = Uri.https("api.openai.com", "/v1/completions");
  final response = await http.post(
    url,
    headers: {
      'Content-Type': 'application/json',
      "Authorization": "Bearer $apiKey"
    },
    body: json.encode({
      "model": "text-davinci-003",
      "prompt": prompt,
      'temperature': 0,
      'max_tokens': 2000,
      'top_p': 1,
      'frequency_penalty': 0.0,
      'presence_penalty': 0.0,
    }),
  );

  // Do something with the response
  Map<String, dynamic> newresponse = json.decode(response.body)['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'] ;

  return newresponse['choices'][0]['text'];
}

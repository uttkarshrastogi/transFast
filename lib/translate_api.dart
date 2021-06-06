import 'dart:convert';
import 'package:transapp/translate.dart';

import 'package:http/http.dart' as http;

class RecipeApi {
  static Future<Welcome> getRecipe(String text, String to, String from) async {
    String Text;
    String To;
    String From;
    Text = text;
    To = to;
    From = from;
    var uri = Uri.https('nlp-translation.p.rapidapi.com', '/v1/translate',
        {"text": Text, "to": To, "from": From});

    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "3621b889f3msh1f67dd4845e7b97p1a6432jsn69f1e453d987",
      "x-rapidapi-host": "nlp-translation.p.rapidapi.com",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);

    return Welcome.fromJason(data["translated_text"][To]);
  }
}

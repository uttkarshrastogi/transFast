// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

class Welcome {
  Welcome({
    required this.translated_text,
  });

  String translated_text;

  factory Welcome.fromJason(dynamic json) {
    return Welcome(translated_text: json as String);
  }

  @override
  String toString() {
    return '$translated_text';
  }
}

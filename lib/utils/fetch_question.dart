import 'dart:convert';

import 'package:coba_tugas_akhir/models/question.dart';
import 'package:http/http.dart' as http;

Future<List<Question>> fetchQuestion() async {
  var url =
      Uri.parse('https://pbp-d01.up.railway.app/recycle/json-question-all/');
  var response = await http.get(
    url,
  );
  // melakukan decode response menjadi bentuk json
  var data = jsonDecode(utf8.decode(response.bodyBytes));

  List<Question> listQuestion = [];

  for (var d in data) {
    if (d != null) {
      listQuestion.add(Question.fromJson(d));
    }
  }
  return listQuestion;
}

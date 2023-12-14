import 'dart:convert';
import 'package:http/http.dart' as http;

main() async{
  final data = await getMovie();
  print(jsonEncode(data));
}

Future<Map<String,dynamic>> getMovie() async{
  final response = await http.get(Uri.parse(
      "https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1"
  ));
  // 모델에 담아야하니...
  /*print(response.body);*/

  final data = jsonDecode(response.body);

  return data;
}
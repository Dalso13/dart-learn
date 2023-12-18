import 'dart:convert';
import 'package:http/http.dart' as http;

main() async{
  final data = await getMovie(901362);

  print(jsonEncode(data));
}


Future<Map<String,dynamic>> getMovie(int movieId) async{
  final response = await http.get(Uri.parse(
      "https://api.themoviedb.org/3/movie/${movieId}?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1"
  ));


  return jsonDecode(response.body);
}

import 'dart:convert';

Future<String> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 2));

  final mockData = {
    'title' : 'Star Wars',
    'director' : 'George Lucas',
    'year' : 1977,
  };

  return jsonEncode(mockData);
}

main() {
  
  // 클래스 활용해서 데이터 꺼내기
  Future<void> classMovieInfo() async {

    final movieData = await getMovieInfo();

    final Movie movie = Movie.fromMap(JsonDecoder().convert(movieData));

    print(movie.director);

  }


  classMovieInfo();
}


class Movie {
  String title,director;
  int year;

  Movie({
    required this.title,
    required this.director,
    required this.year,
  });

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      title: map['title'] as String,
      director: map['director'] as String,
      year: map['year'] as int,
    );
  }


}
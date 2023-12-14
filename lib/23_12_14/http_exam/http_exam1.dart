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


  final data = jsonDecode(response.body);


  // 클래스 쓰고 넘길때;
  /*final data = MovieLists.fromMap(jsonDecode(response.body));

  final movie = data.results.map((e) => Results.fromMap(e)).toList();

  data.results = movie;*/

  return data;

}

class MovieLists {
  Map<String,dynamic> dates;
  List<dynamic> results;
  int page, total_pages, total_results;

  MovieLists({
    required this.dates,
    required this.results,
    required this.page,
    required this.total_pages,
    required this.total_results,
  });

  Map<String, dynamic> toMap() {
    return {
      'dates': this.dates,
      'results': this.results,
      'page': this.page,
      'total_pages': this.total_pages,
      'total_results': this.total_results,
    };
  }

  factory MovieLists.fromMap(Map<String, dynamic> map) {
    return MovieLists(
      dates: map['dates'] as Map<String, dynamic>,
      results: map['results'] as List<dynamic>,
      page: map['page'] as int,
      total_pages: map['total_pages'] as int,
      total_results: map['total_results'] as int,
    );
  }

}

class Results {
  bool? adult;
  String? backdropPath;
  List<int>? genreIds;
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  double? voteAverage;
  int? voteCount;

  Results(
      {this.adult,
      this.backdropPath,
      this.genreIds,
      this.id,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.posterPath,
      this.releaseDate,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount});

  Map<String, dynamic> toMap() {
    return {
      'adult': this.adult,
      'backdropPath': this.backdropPath,
      'genreIds': this.genreIds,
      'id': this.id,
      'originalLanguage': this.originalLanguage,
      'originalTitle': this.originalTitle,
      'overview': this.overview,
      'popularity': this.popularity,
      'posterPath': this.posterPath,
      'releaseDate': this.releaseDate,
      'title': this.title,
      'video': this.video,
      'voteAverage': this.voteAverage,
      'voteCount': this.voteCount,
    };
  }

  factory Results.fromMap(Map<String, dynamic> map) {
    return Results(
      adult: map['adult'],
      backdropPath: map['backdropPath'],
      genreIds: map['genreIds'] ,
      id: map['id'],
      originalLanguage: map['originalLanguage'] ,
      originalTitle: map['originalTitle'],
      overview: map['overview'],
      popularity: map['popularity'],
      posterPath: map['posterPath'],
      releaseDate: map['releaseDate'],
      title: map['title'],
      video: map['video'],
      voteAverage: map['voteAverage'],
      voteCount: map['voteCount'],
    );
  }
}
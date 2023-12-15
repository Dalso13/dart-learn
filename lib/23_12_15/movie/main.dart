import 'package:untitled/23_12_13/exam/async_exam2.dart';
import 'package:untitled/23_12_15/movie/mapper/movie_mapper.dart';
import 'package:untitled/23_12_15/movie/model/movie_brief.dart';
import 'package:untitled/23_12_15/movie/source/movie_source.dart';

main() async {
  final api = await MovieSource().getMovieData();


  List<MovieBrief> brief = api.results?.map((e) => e.toMovieBrief()).toList() ?? [];

  print(brief.toString());
}
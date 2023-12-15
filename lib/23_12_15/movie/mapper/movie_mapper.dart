

import 'package:untitled/23_12_15/movie/model/movie_brief.dart';

import '../dto/movie_dto.dart';

extension MovieMapper on Results{

  MovieBrief toMovieBrief() {
    return MovieBrief(
        title: title ?? " 제목없음",
        overview: overview ?? "없음",
        originalTitle: originalTitle ?? "없다"
    );
  }
}
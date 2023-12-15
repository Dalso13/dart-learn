
import 'package:json_annotation/json_annotation.dart';

part 'movie_brief.g.dart';

@JsonSerializable(explicitToJson: true)
class MovieBrief {
  String title, overview, originalTitle;

  MovieBrief({
    required this.title,
    required this.overview,
    required this.originalTitle,
  });
  
  factory MovieBrief.fromJson(Map<String, dynamic> json) => _$MovieBriefFromJson(json);
  
  Map<String, dynamic> toJson() => _$MovieBriefToJson(this);

  @override
  String toString() {
    return 'MovieBrief{title: $title, overview: $overview, originalTitle: $originalTitle}';
  }
}
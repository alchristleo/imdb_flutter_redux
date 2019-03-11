import 'package:kt_dart/collection.dart';

class MovieList {
  MovieList({
    this.id,
    this.adult,
    this.backdrop_path,
    this.original_language,
    this.original_title,
    this.overview,
    this.poster_path,
    this.release_date,
    this.title,
    this.video,
    this.vote_count,
    this.vote_average,
    this.popularity,
    this.genre_ids,
  });

  final String id;
  final String adult;
  final String backdrop_path;
  final String original_language;
  final String original_title;
  final String overview;
  final String poster_path;
  final String title;
  final String video;
  final String vote_count;
  final String vote_average;
  final String popularity;
  final DateTime release_date;
  final List<int> genre_ids;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieList &&
            runtimeType == other.runtimeType &&
            id == other.id &&
            adult == other.adult &&
            backdrop_path == other.backdrop_path &&
            original_language == other.original_language &&
            original_title == other.original_title &&
            overview == other.overview &&
            poster_path == other.poster_path &&
            release_date == other.release_date &&
            title == other.title &&
            video == other.video &&
            vote_count == other.vote_count &&
            vote_average == other.vote_average &&
            popularity == other.popularity &&
            genre_ids == other.genre_ids;

    @override
    int get hashCode =>
        id.hashCode ^
        adult.hashCode ^
        backdrop_path.hashCode ^
        original_language.hashCode ^
        original_title.hashCode ^
        overview.hashCode ^
        poster_path.hashCode ^
        release_date.hashCode ^
        title.hashCode ^
        video.hashCode ^
        vote_count.hashCode ^
        vote_average.hashCode ^
        popularity.hashCode ^
        genre_ids.hashCode;
}

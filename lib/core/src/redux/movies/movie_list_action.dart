import 'package:imdb_flutter_redux/core/src/models/movie_list.dart';
import 'package:kt_dart/collection.dart';

class FetchMovieListLoadingAction {}

class FetchMovieListSuccessAction {
    FetchMovieListSuccessAction(this.movieList);
    final KtList<MovieList> movieList;
}

class FetchMovieListErrorAction {}

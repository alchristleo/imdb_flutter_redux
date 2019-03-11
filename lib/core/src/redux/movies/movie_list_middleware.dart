import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:imdb_flutter_redux/core/src/redux/app/app_state.dart';
import 'package:kt_dart/collection.dart';
import 'package:redux/redux.dart';

class MovieListMiddleware extends MiddlewareClass<AppState> {
  @override
  Future<Null> call(
      Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);

    if (action is InitCompleteAction || action is UpdateShowDatesAction) {
      await _updateShowDates(action, next);
    }

    if (action is ChangeCurrentTheaterAction ||
        action is RefreshShowsAction ||
        action is ChangeCurrentDateAction) {
      await _updateCurrentShows(store, action, next);
    }

    if (action is FetchShowsIfNotLoadedAction) {
      if (store.state.showState.loadingStatus == LoadingStatus.idle) {
        await _updateCurrentShows(store, action, next);
      }
    }
  }

  Future<KtList<Show>> _fetchShows(
      DateTime currentDate, Theater newTheater, NextDispatcher next) async {
    final shows = await api.getSchedule(newTheater, currentDate);
    final now = Clock.getCurrentTime();

    // Return only show times that haven't started yet.
    return shows.filter((show) => show.start.isAfter(now));
  }
}

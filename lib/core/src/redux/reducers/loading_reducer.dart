import 'package:redux/redux.dart';
import 'package:imdb_flutter_redux/redux/actions/action.dart';

final loadingReducer = combineReducers<bool>([
  TypedReducer<bool, MoviesListLoadedAction>(_setLoaded)
]);

bool _setLoaded(bool state, action) {
  return false;
}

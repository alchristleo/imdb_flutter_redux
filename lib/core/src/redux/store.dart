import 'package:core/src/networking/finnkino_api.dart';
import 'package:core/src/api/imdb.dart';
import 'package:core/src/redux/app/app_reducer.dart';
import 'package:core/src/redux/app/app_state.dart';
import 'package:core/src/redux/show/show_middleware.dart';
import 'package:http/http.dart';
import 'package:key_value_store/key_value_store.dart';
import 'package:redux/redux.dart';

Store<AppState> createStore(Client client, KeyValueStore keyValueStore) {
  final imdbAPI = TMDBApi(client);
  final finnkinoApi = FinnkinoApi(client);

  return Store(
    appReducer,
    initialState: AppState.initial(),
    distinct: true,
    middleware: [
      ShowMiddleware(finnkinoApi)
    ],
  );
}

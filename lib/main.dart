import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:imdb_flutter_redux/core/src/global/navigator.dart';
import 'package:imdb_flutter_redux/core/src/global/colors.dart';
import 'package:imdb_flutter_redux/presentation/components/loading.dart';
import 'package:imdb_flutter_redux/presentation/modules/movies/list.dart';

// var routes = <String, WidgetBuilder>{
//     // LIST ALL ROUTES
// };

// void main() => runApp(new MaterialApp(
//     theme:
//         ThemeData(primaryColor: colorMinionYellow, accentColor: colorWhite),
//     debugShowCheckedModeBanner: false,
//     home: LoadingScreen(),
//     routes: routes));
Future<void> main() async {
    final prefs = await SharedPreferences.getInstance();
    final keyValueStore = FlutterKeyValueStore(prefs);
    final store = createStore(Client(), keyValueStore);

    runApp(IMDbApp(store));
}

class IMDbApp extends StatefulWidget {
    IMDbApp(this.store);
    final Store<AppState> store;

    @override
    _IMDbAppState createState() => _IMDbAppState();
}

class _IMDbAppState extends State<IMDbApp> {
  @override
  void initState() {
    super.initState();
    widget.store.dispatch(InitAction());
  }

    @override
    Widget build(BuildContext context) {
        return StoreProvider<AppState>(
            store: widget.store,
            child: MaterialApp(
                title: 'IMDb Popular Movies with Flutter',
                theme: ThemeData(primaryColor: colorMinionYellow, accentColor: colorWhite),
                home: LoadingScreen()
            )
        );
    }
}
// void main () {
//     runApp(ReduxApp());
// }

// class ReduxApp extends StatelessWidget {
//     final store = Store<AppState>(
//         appReducer,
//         initialState: AppState.loading()
//         // middleware: createStoreTodosMiddleware(),
//     );

//     @override
//   Widget build(BuildContext context) {
//     return StoreProvider(
//       store: store,
//       child: MaterialApp(
//         title: "IMDb Popular Movies with Flutter",
//         theme: ThemeData(primaryColor: colorMinionYellow, accentColor: colorWhite),
//         home: LoadingScreen(),
//         routes: {
//           MyNavigator.home: (context) {
//             return HomeScreen(
//               onInit: () {
//                 StoreProvider.of<AppState>(context).dispatch(LoadTodosAction());
//               },
//             );
//           },
//         //   MyNavigator.addTodo: (context) {
//         //     return AddTodo();
//         //   },
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:imdb_flutter_redux/movies/loading.dart';
import 'package:imdb_flutter_redux/global/colors.dart';

var routes = <String, WidgetBuilder>{
    // LIST ALL ROUTES
};

void main() => runApp(new MaterialApp(
    theme:
        ThemeData(primaryColor: colorMinionYellow, accentColor: colorWhite),
    debugShowCheckedModeBanner: false,
    home: LoadingScreen(),
    routes: routes));

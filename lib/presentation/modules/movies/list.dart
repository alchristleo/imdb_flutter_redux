// Copyright 2018 The Flutter Architecture Sample Authors. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:imdb_flutter_redux/redux/keys.dart';
// import 'package:todos_app_core/todos_app_core.dart';
// import 'package:redux_sample/containers/active_tab.dart';
// import 'package:redux_sample/containers/extra_actions_container.dart';
// import 'package:redux_sample/containers/filter_selector.dart';
// import 'package:redux_sample/containers/filtered_todos.dart';
// import 'package:redux_sample/containers/stats.dart';
// import 'package:redux_sample/containers/tab_selector.dart';
// import 'package:redux_sample/localization.dart';
// import 'package:redux_sample/models/models.dart';

class HomeScreen extends StatefulWidget {
  final void Function() onInit;

  HomeScreen({@required this.onInit}) : super(key: ReduxKeys.homeScreen);

  @override
  HomeScreenState createState() {
    return new HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    widget.onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Text(
            "HALOOOO",
            style: new TextStyle(
                fontSize: 72
            ),
        ),
    );
  }
}

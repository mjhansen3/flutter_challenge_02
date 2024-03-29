import 'package:flutter/material.dart';

import 'home.dart';
import 'item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'flutter_challenge_02',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                primarySwatch: Colors.blue,
            ),
            home: Home(),
            routes: <String, WidgetBuilder>{
                '/home': (BuildContext context) => Home(),
                '/item': (BuildContext context) => Item(),
            },
        );
    }
}

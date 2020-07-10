import 'package:flutter/material.dart';
import 'package:zimflutterapp/src/screens/location_detail/location_detail.dart';
import 'package:zimflutterapp/src/style.dart';

class MainApp extends StatefulWidget {
  MainApp({Key key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar:
       AppBar(title: Text("Zim Flutter"),),
       body: LocationDetail(),
       ),
       theme: ThemeData(
         appBarTheme: AppBarTheme(
           textTheme: TextTheme(headline6: AppBarTextStyle),
         ),
         textTheme: TextTheme(
           headline6: TitleTextStyle,
           bodyText1: Body1TextStyle,
         )
       ),
    );
  }
}

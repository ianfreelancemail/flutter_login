import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'routes.dart';


void main() => runApp(new MYSAMPLEAPP());

class MYSAMPLEAPP extends StatelessWidget {

  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  return new MaterialApp(
      title: 'Rakkit App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
    );
  }


}
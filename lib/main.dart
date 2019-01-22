import 'package:flutter/material.dart';

import 'package:vivarta/homePage.dart';

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.white70,
      ),
      home: MyApp(),
    );
  }
}



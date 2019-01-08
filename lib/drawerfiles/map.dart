import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text("Here we are",),
        backgroundColor: Colors.teal,
      ),
      url: "https://www.google.co.in/maps/place/Techno+India+University/@22.5758587,88.4260918,17z/data=!3m1!4b1!4m5!3m4!1s0x39f970ae9a2e19b5:0x16c43b9069f4b159!8m2!3d22.5758538!4d88.4282805",
    );
  }
}


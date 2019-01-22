import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:vivarta/drawer.dart';
import 'package:vivarta/departments/computing.dart';
import 'package:vivarta/departments/robotics.dart';
import 'package:vivarta/departments/mechmania.dart';
import 'package:vivarta/departments/cyberquest.dart';
import 'package:vivarta/departments/fun.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final String url = "https://www.jasonbase.com/things/EKl0.json";
  List data;
  bool isdataloaed = false;

  @override
  void initState() {
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    print(response.body);

    setState(() {
      var convertDataToJson = json.decode(response.body);
      data = convertDataToJson['events'];
      isdataloaed = true;
    });

    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return isdataloaed
        ? Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text(
                "Vivarta 2k19",
                style: TextStyle(color: Colors.teal),
              ),
            ),
            drawer: CustomDrawer(),
            backgroundColor: Colors.white,
            body: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Image(
                  image: AssetImage("gallery/wall.png"),
                  fit: BoxFit.fill,
                ),
                customImageLogo(
                  alignment: Alignment.topLeft,
                  image: Image.network(data[1]['name']),
                  pageRoute: Robotics(),
                ),
                customImageLogo(
                  alignment: Alignment.topRight,
                  image: Image.network(data[2]['name']),
                  pageRoute: Mechmania(),
                ),
                customImageLogo(
                  alignment: Alignment.center,
                  image: Image.network(data[0]['name']),
                  pageRoute: Computing()
                ),
                customImageLogo(
                  alignment: Alignment.bottomLeft,
                  image: Image.network(data[3]['name']),
                  pageRoute: Cyberquest()
                ),
                customImageLogo(
                  alignment: Alignment.bottomRight,
                  image: Image.network(data[4]['name']),
                  pageRoute: Fun(),
                ),
              ],
            ))
        : Scaffold(
            backgroundColor: Colors.black,
            body: Column(
              children: <Widget>[
                Divider(
                  height: 100.0,
                ),
                Vivlogo(),
                Divider(
                  height: 100.0,
                ),
                Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.redAccent,
                    strokeWidth: 6.0,
                  ),
                ),
                Divider(
                  height: 40.0,
                ),
                Text(
                  "Make sure you have \nactive internet connection",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.teal, fontSize: 20.0),
                )
              ],
            ));
  }

  Widget imageLogo(var image) => Container(
    padding: EdgeInsets.all(10.0),
    margin: EdgeInsets.all(10.0),
    child: CircleAvatar(
      radius: 50,
      child: image,
    ),
  );

  Widget customImageLogo({var alignment, var image, var pageRoute}) => Align(
    alignment: alignment,
    child: GestureDetector(
      child: imageLogo(image),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => pageRoute));
      },
    ),
  );
}

class Vivlogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('gallery/logo.png');
    Image image = Image(image: assetImage);
    return Container(
      height: 200.0,
      width: 300.0,
      color: Colors.black,
      child: image,
    );
  }
}

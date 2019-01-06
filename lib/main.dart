import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:vivarta/departments/computing.dart';
import 'package:vivarta/departments/robotics.dart';
import 'package:vivarta/departments/mechmania.dart';
import 'package:vivarta/departments/cyberquest.dart';
import 'package:vivarta/departments/fun.dart';

import 'package:vivarta/drawerfiles/place.dart';
import 'package:vivarta/drawerfiles/aboutus.dart';
import 'package:vivarta/drawerfiles/contact.dart';
import 'package:vivarta/drawerfiles/gallery.dart';



void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final String url =
      "https://www.jasonbase.com/things/EKl0.json";
  List data;
  bool isdataloaed = false;

  @override
  void initState() {
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async {
    var response = await http.get(

      //encoding url
        Uri.encodeFull(url),
        headers: {"Accept": "application/json"});

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
    if (isdataloaed == false) {
      return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: ListView(
            children: <Widget>[
              Divider(height: 100.0,),
              Vivlogo(),
              Divider(height: 100.0,),
              Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.redAccent,
                  strokeWidth: 6.0,
                ),
              ),
            ],
          )
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("Vivarta 2k19"),
        ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                Divider(height: 40.0,),
                ListTile(
                  title: Text("Schedule"),
                  leading: Icon(Icons.calendar_today),
                ),
                Divider(height: 40.0,),
                ListTile(
                  title: Text("Sponsors"),
                  leading: Icon(Icons.account_balance),
                ),
                Divider(height: 40.0,),
                ListTile(
                  title: Text("Contact"),
                  leading: Icon(Icons.people),
                  onTap: () {
                    Navigator.of(context).pop();
                    //  Navigator.of(context).pushNamed("/a");
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new Contact()));
                  },
                ),
                Divider(height: 40.0,),
                ListTile(
                  title: Text("Place"),
                  leading: Icon(Icons.place),
                  onTap: () {
                    Navigator.of(context).pop();
                    //  Navigator.of(context).pushNamed("/a");
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new Place()));
                  },
                ),
                Divider(height: 40.0,),
                ListTile(
                  title: Text("Image Gallery"),
                  leading: Icon(Icons.image),
                  onTap: () {
                    Navigator.of(context).pop();
                    //  Navigator.of(context).pushNamed("/a");
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new Gallery()));
                  },
                ),
                Divider(height: 40.0,),
                ListTile(
                  title: Text("About Us"),
                  leading: Icon(Icons.account_circle),
                  onTap: () {
                    Navigator.of(context).pop();
                    //  Navigator.of(context).pushNamed("/a");
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new AboutUs()));
                  },
                ),
              ],
            ),
          ),
          backgroundColor: Colors.white,
          body: Container(
                child: ListView(
                  children: <Widget>[
                    Divider(),
                    Wrap(
                      alignment: WrapAlignment.center,
                      children: <Widget>[
                        ClipRRect(
                          clipBehavior: Clip.hardEdge,
                          borderRadius: BorderRadius.circular(20.0),
                          child: Container(
                            child: Text("Tap on each to get Details",style: TextStyle(color: Colors.black54,fontSize: 30.0),),
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(left: 0.0,right: 50.0),
                            height: 150.0,
                            width: 150.0,
                            child: Image.network(data[1]['name']),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Robotics()));
                          },
                        ),
                        GestureDetector(
                          child: Container(
                            height: 150.0,
                            width: 150.0,
                            child: Image.network(data[2]['name']),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Mechmania()));
                          },
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(left: 100.0),
                            height: 150.0,
                            width: 150.0,
                            child: Image.network(data[0]['name']),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Computing()));
                          },
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(left: 0.0, right: 50.0),
                            height: 150.0,
                            width: 150.0,
                            child: Image.network(data[3]['name']),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Cyberquest()));
                          },
                        ),
                        GestureDetector(
                          child: Container(
                            height: 150.0,
                            width: 150.0,
                            child: Image.network(data[4]['name']),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Fun()));
                          },
                        ),
                      ],
                    ),
                    Divider(),
                  ],
                ),
              )
      );
    }
  }
}

class Vivlogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('gallery/vivartalogo.png');
    Image image = Image(image: assetImage);
    return Container(
      height: 200.0,
      width: 300.0,
      color: Colors.blueGrey,
      child: image,
    );
  }
}

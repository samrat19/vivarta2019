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
import 'package:vivarta/drawerfiles/eventwiseplace.dart';
import 'package:vivarta/drawerfiles/tutorial.dart';
import 'package:vivarta/drawerfiles/credits.dart';
import 'package:vivarta/drawerfiles/schedule.dart';
import 'package:vivarta/drawerfiles/sponsers.dart';



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
        backgroundColor: Colors.black,
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
              Divider(height: 40.0,),
              Text("make Sure you have Active Internet Connection.......",
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: 20.0),
              )
            ],
          )
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Vivarta 2k19",style: TextStyle(color: Colors.teal),),
        ),
          drawer: Drawer(
            child: Container(
              color: Colors.black,
              child: ListView(
                children: <Widget>[
                  Divider(),
                  Vivlogo(),
                  Divider(height: 10.0,),
                  ListTile(
                    title: Text("Schedule",style: TextStyle(color: Colors.teal,fontSize: 20.0),),
                    leading: Icon(Icons.calendar_today,color: Colors.teal,size: 30.0,),
                    onTap: () {
                      Navigator.of(context).pop();
                      //  Navigator.of(context).pushNamed("/a");
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => Schedule()));
                    },
                  ),
                  Divider(height: 10.0,),
                  ListTile(
                    title: Text("Sponsors",style: TextStyle(color: Colors.teal,fontSize: 20.0),),
                    leading: Icon(Icons.account_balance,color: Colors.teal,size: 35.0,),
                    onTap: () {
                      Navigator.of(context).pop();
                      //  Navigator.of(context).pushNamed("/a");
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => Sponsers()));
                    },
                  ),
                  Divider(height: 10.0,),
                  ListTile(
                    title: Text("Contact",style: TextStyle(color: Colors.teal,fontSize: 20.0),),
                    leading: Icon(Icons.wifi,color: Colors.teal,size: 30.0,),
                    onTap: () {
                      Navigator.of(context).pop();
                      //  Navigator.of(context).pushNamed("/a");
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => new Contact()));
                    },
                  ),
                  Divider(height: 10.0,),
                  ListTile(
                    title: Text("Place",style: TextStyle(color: Colors.teal,fontSize: 20.0),),
                    leading: Icon(Icons.place,size: 30.0,color: Colors.teal,),
                    onTap: () {
                      Navigator.of(context).pop();
                      //  Navigator.of(context).pushNamed("/a");
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => new Place()));
                    },
                  ),
                  Divider(height: 10.0,),
                  ListTile(
                    title: Text("Image Gallery",style: TextStyle(color: Colors.teal,fontSize: 20.0),),
                    leading: Icon(Icons.image,size: 30.0,color: Colors.teal,),
                    onTap: () {
                      Navigator.of(context).pop();
                      //  Navigator.of(context).pushNamed("/a");
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => new Gallery()));
                    },
                  ),
                  Divider(height: 10.0,),
                  ListTile(
                    title: Text("About Us",style: TextStyle(color: Colors.teal,fontSize: 20.0),),
                    leading: Icon(Icons.account_circle,size: 30.0,color: Colors.teal,),
                    onTap: () {
                      Navigator.of(context).pop();
                      //  Navigator.of(context).pushNamed("/a");
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => new AboutUs()));
                    },
                  ),
                  ListTile(
                    title: Text("Event Wise Place",style: TextStyle(color: Colors.teal,fontSize: 20.0),),
                    leading: Icon(Icons.local_airport,size: 30.0,color: Colors.teal,),
                    onTap: () {
                      Navigator.of(context).pop();
                      //  Navigator.of(context).pushNamed("/a");
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => new EventPlace()));
                    },
                  ),
                  ListTile(
                    title: Text("Tutorial",style: TextStyle(color: Colors.teal,fontSize: 20.0),),
                    leading: Icon(Icons.book,size: 30.0,color: Colors.teal,),
                    onTap: () {
                      Navigator.of(context).pop();
                      //  Navigator.of(context).pushNamed("/a");
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => new Tutorial()));
                    },
                  ),
                  ListTile(
                    title: Text("Credits",style: TextStyle(color: Colors.teal,fontSize: 20.0),),
                    leading: Icon(Icons.people,size: 30.0,color: Colors.teal,),
                    onTap: () {
                      Navigator.of(context).pop();
                      //  Navigator.of(context).pushNamed("/a");
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => new Credit()));
                    },
                  )
                ],
              ),
            )
          ),
          backgroundColor: Colors.white,
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image(
                image: AssetImage("gallery/wall.png"),
                fit: BoxFit.cover,
              ),
              Container(
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
                            child: Text("Tap on each to get Details",
                              style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 25.0),
                            ),
                          ),
                        )
                      ],
                    ),
                    Divider(height: 40.0,),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(left: 0.0,right: 50.0),
                            height: 100.0,
                            width: 100.0,
                            child: Image.network(data[1]['name']),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Robotics()));
                          },
                        ),
                        GestureDetector(
                          child: Wrap(
                            alignment: WrapAlignment.end,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 110.0),
                                height: 100.0,
                                width: 100.0,
                                child: Image.network(data[2]['name']),
                              ),
                            ],
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
                          child: Center(
                            child: Container(
                              margin: EdgeInsets.only(left: 130.0,top: 40.0),
                              height: 100.0,
                              width: 100.0,
                              child: Image.network(data[0]['name']),
                            ),
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
                    Divider(),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(left: 0.0, right: 50.0),
                            height: 100.0,
                            width: 100.0,
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
                            height: 100.0,
                            width: 100.0,
                            margin: EdgeInsets.only(left: 110.0,top: 30.0),
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
            ],
          )
      );
    }
  }
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

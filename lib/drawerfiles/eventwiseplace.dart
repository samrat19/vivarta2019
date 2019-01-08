import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:vivarta/events/robotics.dart';
import 'package:vivarta/events/mechmania.dart';
import 'package:vivarta/events/funbash.dart';
import 'package:vivarta/events/cyberquest.dart';

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

class EventPlace extends StatefulWidget {
  @override
  _EventPlaceState createState() => _EventPlaceState();
}

class _EventPlaceState extends State<EventPlace> {
  final String url = "https://www.jasonbase.com/things/WABZ.json";
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
      data = convertDataToJson['place'];
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
            ],
          ));
    } else {
      return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: <Widget>[
            Divider(),
            Container(
              color: Colors.black,
              height: 150.0,
              width: 400.0,
              child: Center(
                child: Container(
                  height: 150.0,
                  width: 100.0,
                  child: Vivlogo(),
                ),
              ),
            ),
            Container(
              height: 450.0,
              child: ListView(
                children: <Widget>[
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      Text("Computing",style: TextStyle(fontSize: 25.0,color: Colors.teal),)
                    ],
                  ),
                  Divider(
                    height: 10.0,
                  ),
                  Container(
                    height: 140.0,
                    color: Colors.black,
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    child: ListView.builder(
                      itemCount: data == null ? 0 : data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Wrap(
                          children: <Widget>[
                            Table(
                              border: TableBorder.all(color: Colors.teal),
                              defaultColumnWidth: FixedColumnWidth(120.0),
                              children: [
                                TableRow(
                                  children: [
                                    Text(data[index]['name'],textAlign: TextAlign.center,style: TextStyle(fontSize: 17.0,color: Colors.teal),),
                                    Text(data[index]['parent'],textAlign: TextAlign.center,style: TextStyle(fontSize: 17.0,color: Colors.teal),),
                                    Text(data[index]['child'],textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0,color: Colors.teal),),
                                  ]
                                )
                              ],
                            )
                          ],
                        );
                      },
                    ),
                  ),
                  Divider(),
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      Text("Robotics",style: TextStyle(fontSize: 25.0,color: Colors.teal),)
                    ],
                  ),
                  Divider(),
                  Robotics(),
                  Divider(),
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      Text("Mechmania",style: TextStyle(fontSize: 25.0,color: Colors.teal),)
                    ],
                  ),
                  Divider(),
                  Mechmania(),
                  Divider(),
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      Text("CyberQuest",style: TextStyle(fontSize: 25.0,color: Colors.teal),)
                    ],
                  ),
                  Divider(),
                  Cyberquest(),
                  Divider(),
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      Text("Fun Bash",style: TextStyle(fontSize: 25.0,color: Colors.teal),)
                    ],
                  ),
                  Divider(),
                  Fun(),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}



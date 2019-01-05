import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:vivarta/eventcomputing/androjam_details.dart';
import 'package:vivarta/eventcomputing/webyard_details.dart';
import 'package:vivarta/eventcomputing/edvac_details.dart';
import 'package:vivarta/eventcomputing/gothica_details.dart';
import 'package:vivarta/eventcomputing/crossx_details.dart';
import 'package:vivarta/eventcomputing/tenscaptinem_details.dart';

class Computing extends StatefulWidget {
  @override
  _ComputingState createState() => _ComputingState();
}

class _ComputingState extends State<Computing> {

  final String url =
      "https://www.jasonbase.com/things/gEMg.json";
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
      data = convertDataToJson['compevents'];
      isdataloaed = true;
    });

    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    if (isdataloaed == false) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: new Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.teal,
            strokeWidth: 6.0,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text("Computing"),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              Wrap(
                alignment: WrapAlignment.center,
                children: <Widget>[
                  Container(
                    height: 80.0,
                    margin: EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: Text("Tap on Each Event to Get Details",
                        style: TextStyle(
                          color: Colors.redAccent, fontSize: 22.0,),),
                    ),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(left: 0.0, right: 150.0),
                      height: 100.0,
                      width: 100.0,
                      child: Image.network(data[0]['poster']),
                    ),
                    onTap: () {
                      String name = data[0]['name'];
                      String rules = data[0]['rules'];
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              AndroDetails(name, rules)));
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      child: Image.network(data[1]['poster']),
                    ),
                    onTap: () {
                      String name = data[1]['name'];
                      String rules = data[1]['rules'];
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              WebDetails(name, rules)));
                    },
                  ),
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(left: 0.0, right: 150.0),
                      height: 100.0,
                      width: 100.0,
                      child: Image.network(data[2]['poster']),
                    ),
                    onTap: () {
                      String name = data[2]['name'];
                      String rules = data[2]['rules'];
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              EdvacDetails(name, rules)));
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      child: Image.network(data[3]['poster']),
                    ),
                    onTap: () {
                      String name = data[3]['name'];
                      String rules = data[3]['rules'];
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              GothicaDetails(name, rules)));
                    },
                  ),
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(left: 0.0, right: 150.0),
                      height: 100.0,
                      width: 100.0,
                      child: Image.network(data[4]['poster']),
                    ),
                    onTap: () {
                      String name = data[4]['name'];
                      String rules = data[4]['rules'];
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              CrossDetails(name, rules)));
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      child: Image.network(data[5]['poster']),
                    ),
                    onTap: () {
                      String name = data[5]['name'];
                      String rules = data[5]['rules'];
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              TensDetails(name, rules)));
                    },
                  ),
                ],
              ),
              Divider(),
            ],
          ),
        ),
      );
    }
  }
}

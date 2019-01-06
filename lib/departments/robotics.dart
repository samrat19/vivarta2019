import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:vivarta/event_details.dart';
import 'package:vivarta/form.dart';

class Robotics extends StatefulWidget {
  @override
  _RoboticsState createState() => _RoboticsState();
}

class _RoboticsState extends State<Robotics> {

  final String url =
      "https://www.jasonbase.com/things/3dl1.json";
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

  void RegistrationForm() {
    setState(() {
      Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new FormDetails()));
    });
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
          title: Text("Robotics"),
          backgroundColor: Colors.blueGrey,
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
                      String coordinators = data[0]['coordinators'];
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              EventDetails(name, rules,coordinators)));
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
                      String coordinators = data[1]['coordinators'];
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              EventDetails(name, rules,coordinators)));
                    },
                  ),
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(left: 135.0),
                      height: 100.0,
                      width: 100.0,
                      child: Image.network(data[2]['poster']),
                    ),
                    onTap: () {
                      String name = data[2]['name'];
                      String rules = data[2]['rules'];
                      String coordinators = data[2]['coordinators'];
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              EventDetails(name, rules,coordinators)));
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
                      String name = data[3]['name'];
                      String rules = data[3]['rules'];
                      String coordinators = data[3]['coordinators'];
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              EventDetails(name, rules,coordinators)));
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      child: Image.network(data[4]['poster']),
                    ),
                    onTap: () {
                      String name = data[4]['name'];
                      String rules = data[4]['rules'];
                      String coordinators = data[4]['coordinators'];
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              EventDetails(name, rules,coordinators)));
                    },
                  ),
                ],
              ),
              Divider(),
              Wrap(
                alignment: WrapAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    clipBehavior: Clip.hardEdge,
                    child: MaterialButton(
                      onPressed: RegistrationForm,
                      color: Colors.grey,
                      splashColor: Colors.redAccent,
                      child: Text("Click to Register",
                        style: TextStyle(color: Colors.white, fontSize: 20.0),),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      );
    }
  }
}

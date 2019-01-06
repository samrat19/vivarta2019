import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class EventDetails extends StatefulWidget {

  final String name;
  final String rules;
  final String coordinators;

  EventDetails(this.name,this.rules,this.coordinators);

  @override
  _EventDetailsState createState() => _EventDetailsState(this.name,this.rules,this.coordinators);
}

class _EventDetailsState extends State<EventDetails> {

  final String name;
  final String rules;
  final String coordinators;

  _EventDetailsState(this.name,this.rules,this.coordinators);

  final String url = "";
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
        Uri.encodeFull(this.coordinators),
        headers: {"Accept": "application/json"});

    print(response.body);

    setState(() {
      var convertDataToJson = json.decode(response.body);
      data = convertDataToJson['coordinator'];
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
    }else {
      return Scaffold(
          appBar: AppBar(
            title: Text(this.name),
            backgroundColor: Colors.blueGrey,
          ),
          body: ListView(
            children: <Widget>[
              Wrap(
                alignment: WrapAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      margin: EdgeInsets.only(top: 40.0),
                      color: Colors.redAccent,
                      child: Text("Event Coordinators",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),),
                    ),
                  )
                ],
              ),
              Divider(),
              Container(
                height: 200.0,
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 20.0),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: data == null ? 0 : data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      child: Container(
                        height: 100.0,
                        width: 300.0,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 100.0,
                              child: Image.network(data[index]['dp']),
                            ),
                            Container(
                              width: 150.0,
                              child: ListView(
                                children: <Widget>[
                                  Divider(),
                                  Text(data[index]['name']),
                                  Text(data[index]['role']),
                                  Text(data[index]['contact'])
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Wrap(
                alignment: WrapAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      margin: EdgeInsets.only(top: 40.0),
                      color: Colors.redAccent,
                      child: Text("Event Rules",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),),
                    ),
                  )
                ],
              ),
              Divider(),
              Container(
                color: Colors.grey,
                height: 100.0,
                child: Text(this.rules,
                  style: TextStyle(color: Colors.white, fontSize: 20.0),),
              ),
              Divider(),
            ],
          )
      );
    }
  }
}

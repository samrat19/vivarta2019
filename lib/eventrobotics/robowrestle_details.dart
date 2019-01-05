import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class RobowrestleDetails extends StatefulWidget {

  final String name;
  final String rules;

  RobowrestleDetails(this.name,this.rules);

  @override
  _RobowrestleDetailsState createState() => _RobowrestleDetailsState(this.name,this.rules);
}

class _RobowrestleDetailsState extends State<RobowrestleDetails> {

  final String name;
  final String rules;

  _RobowrestleDetailsState(this.name,this.rules);

  final String url = "https://www.jasonbase.com/things/LQpj.json";
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
      data = convertDataToJson['coordinator'];
      isdataloaed = true;
    });

    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.name),
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
                  child: Text("Event Coordinators",style: TextStyle(fontSize: 30.0,color: Colors.white),),
                ),
              )
            ],
          ),
          Divider(),
          Container(
            height: 200.0,
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 20.0),
            child:  ListView.builder(
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
                  child: Text("Event Rules",style: TextStyle(fontSize: 30.0,color: Colors.white),),
                ),
              )
            ],
          ),
          Divider(),
          Container(
            color: Colors.indigo,
            height: 100.0,
            child: Text(this.rules,style: TextStyle(color: Colors.white,fontSize: 20.0),),
          ),
          Divider(),
          Wrap(
            alignment: WrapAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                clipBehavior: Clip.hardEdge,
                child:  RaisedButton(
                  onPressed: null,
                  child: Text("Click to Register",style: TextStyle(color: Colors.white,fontSize: 20.0),),
                ),
              )
            ],
          )
        ],
      )
    );
  }
}

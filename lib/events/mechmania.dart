import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Mechmania extends StatefulWidget {
  @override
  _MechmaniaState createState() => _MechmaniaState();
}

class _MechmaniaState extends State<Mechmania> {
  final String url = "https://www.jasonbase.com/things/A4QL.json";
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
      return Container(
        color: Colors.black,
        child: Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.redAccent,
            strokeWidth: 6.0,
          ),
        ),
      );
    } else {
      return Container(
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
                    TableRow(children: [
                      Text(
                        data[index]['name'],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 17.0, color: Colors.teal),
                      ),
                      Text(
                        data[index]['parent'],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 17.0, color: Colors.teal),
                      ),
                      Text(
                        data[index]['child'],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20.0, color: Colors.teal),
                      ),
                    ])
                  ],
                )
              ],
            );
          },
        ),
      );
    }
  }
}

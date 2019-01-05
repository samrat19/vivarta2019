import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:vivarta/eventcomputing/computing.dart';
import 'package:vivarta/eventrobotics/robotics.dart';



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
    return Scaffold(
      backgroundColor: Colors.indigo,
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
                    color: Colors.indigo,
                    child: Text("Scroll Right for Events",style: TextStyle(fontSize: 30.0,color: Colors.white),),
                  ),
                )
              ],
            ),
            Divider(),
            Container(
              height: 150.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data == null ? 0 : data.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    child: Image.network(data[index]['name']),
                    onTap: () {
                      if(index == 0) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                Computing()));
                      }
                      if(index == 1) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                Robotics()));
                      }
                    },
                  );
                },
              )
            )
          ],
        )
    );
  }
}

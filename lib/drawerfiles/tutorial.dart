import 'package:flutter/material.dart';
import 'package:vivarta/drawerfiles/url.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Vivlogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('gallery/logo.png');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}

class Tutorial extends StatefulWidget {
  @override
  _TutorialState createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {


  final String url =
      "https://www.jasonbase.com/things/lxyB.json";
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
      data = convertDataToJson['tutorial'];
      isdataloaed = true;
    });

    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("For Your Help",style: TextStyle(color: Colors.white),),
        ),
        body: ListView(
          children: <Widget>[
            Divider(),
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
              height: 350.0,
              color: Colors.black,
              margin: EdgeInsets.symmetric(vertical: 20.0),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: data == null ? 0 : data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50.0,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          child: Text(data[index]['name'],style: TextStyle(fontSize: 20.0,color: Colors.teal)   ,),
                          onTap: (){
                            String url = data[index]['url'];
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Url(url)));
                          },
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        )
    );
  }
}

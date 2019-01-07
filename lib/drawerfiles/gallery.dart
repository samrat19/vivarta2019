import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

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

class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {

  final String url =
      "https://www.jasonbase.com/things/V8pK.json";
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
      data = convertDataToJson['pics'];
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
            ],
          )
      );
    }else {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Image Gallery", style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.teal,
        ),
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
              height: 250.0,
              child: ListView(
                children: <Widget>[
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      Text(
                        "Swipe Right.......", style: TextStyle(fontSize: 20.0,color: Colors.teal),)
                    ],
                  ),
                  Divider(height: 10.0,),
                  Container(
                    height: 200.0,
                    color: Colors.black,
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data == null ? 0 : data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            height: 100.0,
                            width: 300.0,
                            child: Image.network(data[index]['pic']),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            Divider(height:20.0),
            Container(
                height: 50.0,
                margin: EdgeInsets.only(bottom: 0.0),
                child: Center(
                  child: Text("Think Beyond Evolution...",
                    style: TextStyle(color: Colors.teal, fontSize: 20.0),),
                )
            )
          ],
        ),
      );
    }
  }
}
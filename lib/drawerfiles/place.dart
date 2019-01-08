import 'package:flutter/material.dart';
import 'package:vivarta/drawerfiles/map.dart';

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

class Place extends StatefulWidget {
  @override
  _PlaceState createState() => _PlaceState();
}

class _PlaceState extends State<Place> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Place",style: TextStyle(color: Colors.white),),
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
            height: 500.0,
            width: 400.0,
            color: Colors.black,
            child: ListView(
              children: <Widget>[
                Divider(height: 50.0,),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: <Widget>[
                    Text("Techno India University",style: TextStyle(fontSize: 25.5,color: Colors.teal),),
                  ],
                ),
                Divider(height: 30.0),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                     child: Icon(Icons.place,color: Colors.red,size: 125.0,),
                     onTap: (){
                       Navigator.of(context).push(MaterialPageRoute(
                           builder: (BuildContext context) =>
                               Map()));
                     },
                    )
                  ],
                ),
                Divider(height: 30.0,),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: <Widget>[
                    Text("Tap on the marker to get Location",style: TextStyle(fontSize: 20.5,color: Colors.teal),),
                  ],
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}


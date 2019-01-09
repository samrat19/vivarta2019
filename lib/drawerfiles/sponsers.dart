import 'package:flutter/material.dart';

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

class Sponsers extends StatefulWidget {
  @override
  _SponsersState createState() => _SponsersState();
}

class _SponsersState extends State<Sponsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
          Divider(),
          Text("Our Sponsors",textAlign: TextAlign.center,style: TextStyle(color: Colors.teal,fontSize: 30.0),)
        ],
      ),
    );
  }
}

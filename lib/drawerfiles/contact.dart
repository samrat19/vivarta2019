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

class Fblogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('gallery/facebook.png');
    Image image = Image(image: assetImage);
    return Container(
      color: Colors.black,
      child: image,
    );
  }
}

class Instalogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('gallery/instagram.png');
    Image image = Image(image: assetImage);
    return Container(
      color: Colors.black,
      child: image,
    );
  }
}

class Hc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('gallery/male.png');
    Image image = Image(image: assetImage);
    return Container(
      height: 100.0,
      width: 100.0,
      color: Colors.black,
      child: image,
    );
  }
}

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Reach us at"
        ),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: <Widget>[
          Divider(),
          Container(
            color: Colors.black,
            height: 150.0,
            width: 300.0,
            child: Center(
              child: Container(
                height: 150.0,
                width: 100.0,
                child: Vivlogo(),
              ),
            ),
          ),
          Divider(),
          Container(
            height: 150.0,
            width: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: 200.0,
                  width: 120.0,
                  child: ListView(
                    children: <Widget>[
                      Hc(),
                      Text("          Rohan",style: TextStyle(fontSize: 15.0,color: Colors.teal),),
                      Text("     99622 51881",style: TextStyle(fontSize: 15.0,color: Colors.teal),),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  height: 200.0,
                  width: 120.0,
                  child: ListView(
                    children: <Widget>[
                      Hc(),
                      Text("           Souvik",style: TextStyle(fontSize: 15.0,color: Colors.teal),),
                      Text("     90627 86568",style: TextStyle(fontSize: 15.0,color: Colors.teal),),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  height: 200.0,
                  width: 120.0,
                  child: ListView(
                    children: <Widget>[
                      Hc(),
                      Text("            Sayan",style: TextStyle(fontSize: 15.0,color: Colors.teal),),
                      Text("      84448 79463",style: TextStyle(fontSize: 15.0,color: Colors.teal),),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(),
          Container(
            height: 200.0,
            width: 400.0,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        height:80.0,
                        width:80.0,
                        color: Colors.black,
                        margin: EdgeInsets.only(left: 5.0),
                        child:Fblogo(),
                      ),
                      Text("facebook.com/TechnoVivarta",style: TextStyle(color: Colors.teal,fontSize: 15.0),)
                    ],
                  ),
                ),
                Divider(),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        height:70.0,
                        width:70.0,
                        margin: EdgeInsets.only(left: 10.0),
                        child:Instalogo(),
                      ),
                      Text("   instagram.com/TechnoVivarta",style: TextStyle(color: Colors.teal,fontSize: 15.0),)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


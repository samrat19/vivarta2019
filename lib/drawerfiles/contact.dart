import 'package:flutter/material.dart';


class Vivlogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('gallery/vivartalogo.png');
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
      child: image,
    );
  }
}

class Hc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('gallery/rohan.jpg');
    Image image = Image(image: assetImage);
    return Container(
      height: 100.0,
      width: 100.0,
      child: image,
    );
  }
}

class Hc1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('gallery/souvik.jpg');
    Image image = Image(image: assetImage);
    return Container(
      height: 100.0,
      width: 100.0,
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
      appBar: AppBar(
        title: Text(
          "Reach us at"
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
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
                      Text("         Rohan",style: TextStyle(fontSize: 15.0,),),
                      Text("   99622 51881",style: TextStyle(fontSize: 15.0,),),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  height: 200.0,
                  width: 120.0,
                  child: ListView(
                    children: <Widget>[
                      Hc1(),
                      Text("           Souvik",style: TextStyle(fontSize: 15.0,),),
                      Text("     90627 86568",style: TextStyle(fontSize: 15.0,),),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  height: 200.0,
                  width: 120.0,
                  child: ListView(
                    children: <Widget>[
                      Hc1(),
                      Text("              Souvik",style: TextStyle(fontSize: 15.0,),),
                      Text("      90627 86568",style: TextStyle(fontSize: 15.0,),),
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
                        margin: EdgeInsets.only(left: 5.0),
                        child:Fblogo(),
                      ),
                      Text("facebook.com/TechnoVivarta",style: TextStyle(color: Colors.black54,fontSize: 20.0),)
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
                      Text(" instagram.com/TechnoVivarta",style: TextStyle(color: Colors.black54,fontSize: 20.0),)
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


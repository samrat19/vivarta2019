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

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("About Us",style: TextStyle(color: Colors.white),),
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
            height:500.0,
            width: 400.0,
            color: Colors.black,
            child: ListView(
              children: <Widget>[
                Text("Holding true to it's name meaning 'Change' in Sanskrit, \n "
                    "We Strive towards making a change in the lives of the \n"
                    "people we touch and the Society with our Contribution and \n"
                    "ideas. As is the saying \n"
                    "'Change is the only Constant'\n"
                    "Our motive with Vivarta, the Annual Cultural fest of \n"
                    "Techno India University, Kolkata started in 2015, is to \n"
                    "provide a national platform and make way to showcase \n"
                    "their talents to the individuals, who have a fierce zeal in \n"
                    "them for creativity in the Technology domain. We introduce \n"
                    "all these passionate youth out there to compete with \n"
                    "each other in technology based Developments, discovery \n"
                    "gaming, and fun portraits ",style: TextStyle(color: Colors.teal,fontSize: 15.0),)
              ],
            ),
          )
        ],
      ),
    );
  }
}

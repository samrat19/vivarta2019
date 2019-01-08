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

class Tutorial extends StatefulWidget {
  @override
  _TutorialState createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {
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
              height: 500.0,
              width: 400.0,
              color: Colors.black,
              child: ListView(
                children: <Widget>[
                  GestureDetector(
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: <Widget>[
                        Text("Androjam Tutorial",style: TextStyle(color: Colors.teal,fontSize: 20.0),),
                      ],
                    ),
                  ),
                  Divider(height: 40.0,),
                  GestureDetector(
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: <Widget>[
                        Text("Web Tutorial",style: TextStyle(color: Colors.teal,fontSize: 20.0),),
                      ],
                    ),
                  ),
                  Divider(height: 40.0,),
                  GestureDetector(
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: <Widget>[
                        Text("Edvac Tutorial",style: TextStyle(color: Colors.teal,fontSize: 20.0),),
                      ],
                    ),
                  ),
                  Divider(height: 40.0,),
                  GestureDetector(
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: <Widget>[
                        Text("Gothica Tutorial",style: TextStyle(color: Colors.teal,fontSize: 20.0),),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        )
    );
  }
}

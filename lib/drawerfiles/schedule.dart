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

class Schedule extends StatefulWidget {
  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Hang on with Us",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.teal,
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
                height: 180.0,
                width: 100.0,
                child: Vivlogo(),
              ),
            ),
          ),
          Divider(),
          Divider(),
          Container(
            height: 400.0,
            width: 400.0,
            child: ListView(
              children: <Widget>[
                Text("Save your Spot on",textAlign: TextAlign.center,style: TextStyle(color: Colors.teal,fontSize: 30.0),),
                Divider(height: 50.0,),
                Text("1st March 2019",textAlign: TextAlign.center,style: TextStyle(color: Colors.teal,fontSize: 25.0),),
                Divider(),
                Text("2nd March 2019",textAlign: TextAlign.center,style: TextStyle(color: Colors.teal,fontSize: 25.0),),
                Divider(),
                Text("3rd March 2019",textAlign: TextAlign.center,style: TextStyle(color: Colors.teal,fontSize: 25.0),),
                Divider(),
                Divider(),
                Text("At",textAlign:TextAlign.center,style: TextStyle(color: Colors.teal,fontSize: 20.0),),
                Divider(),
                Text("Techno India University",textAlign: TextAlign.center,style: TextStyle(color: Colors.teal,fontSize: 30.0),),
              ],
            ),
          )
        ],
      ),
    );
  }
}

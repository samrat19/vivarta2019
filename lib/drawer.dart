import 'package:flutter/material.dart';

import 'package:vivarta/drawerfiles/place.dart';
import 'package:vivarta/drawerfiles/aboutus.dart';
import 'package:vivarta/drawerfiles/contact.dart';
import 'package:vivarta/drawerfiles/gallery.dart';
import 'package:vivarta/drawerfiles/eventwiseplace.dart';
import 'package:vivarta/drawerfiles/tutorial.dart';
import 'package:vivarta/drawerfiles/credits.dart';
import 'package:vivarta/drawerfiles/schedule.dart';
import 'package:vivarta/drawerfiles/sponsers.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            Divider(),
            Vivlogo(),
            Divider(height: 10.0,),
            ListTile(
              title: Text("Schedule",style: TextStyle(color: Colors.teal,fontSize: 20.0),),
              leading: Icon(Icons.calendar_today,color: Colors.teal,size: 30.0,),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Schedule()));
              },
            ),
            Divider(height: 10.0,),
            ListTile(
              title: Text("Sponsors",style: TextStyle(color: Colors.teal,fontSize: 20.0),),
              leading: Icon(Icons.account_balance,color: Colors.teal,size: 35.0,),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Sponsers()));
              },
            ),
            Divider(height: 10.0,),
            ListTile(
              title: Text("Contact",style: TextStyle(color: Colors.teal,fontSize: 20.0),),
              leading: Icon(Icons.wifi,color: Colors.teal,size: 30.0,),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Contact()));
              },
            ),
            Divider(height: 10.0,),
            ListTile(
              title: Text("Place",style: TextStyle(color: Colors.teal,fontSize: 20.0),),
              leading: Icon(Icons.place,size: 30.0,color: Colors.teal,),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Place()));
              },
            ),
            Divider(height: 10.0,),
            ListTile(
              title: Text("Image Gallery",style: TextStyle(color: Colors.teal,fontSize: 20.0),),
              leading: Icon(Icons.image,size: 30.0,color: Colors.teal,),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Gallery()));
              },
            ),
            Divider(height: 10.0,),
            ListTile(
              title: Text("About Us",style: TextStyle(color: Colors.teal,fontSize: 20.0),),
              leading: Icon(Icons.account_circle,size: 30.0,color: Colors.teal,),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new AboutUs()));
              },
            ),
            ListTile(
              title: Text("Event Wise Place",style: TextStyle(color: Colors.teal,fontSize: 20.0),),
              leading: Icon(Icons.local_airport,size: 30.0,color: Colors.teal,),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new EventPlace()));
              },
            ),
            ListTile(
              title: Text("Tutorial",style: TextStyle(color: Colors.teal,fontSize: 20.0),),
              leading: Icon(Icons.book,size: 30.0,color: Colors.teal,),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Tutorial()));
              },
            ),
            ListTile(
              title: Text("Credits",style: TextStyle(color: Colors.teal,fontSize: 20.0),),
              leading: Icon(Icons.people,size: 30.0,color: Colors.teal,),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Credit()));
              },
            )
          ],
        ),
      )
    );
  }
}

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
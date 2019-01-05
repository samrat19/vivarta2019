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

class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Gallery"),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
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
            height: 300.0,
            child: ListView(
              children: <Widget>[
                Wrap(
                  alignment: WrapAlignment.center,
                  children: <Widget>[
                    Text("Swipe Right.......",style: TextStyle(fontSize: 40.0),)
                  ],
                ),
                Divider(height: 30.0,),
                Container(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Pic(), Pic1(), Pic2(), Pic3(), Pic5(), Pic6(), Pic7(), Pic8(), Pic9(),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 50.0,
            margin: EdgeInsets.only(bottom: 0.0),
            child: Center(
              child: Text("Think Beyond Evolution...",style: TextStyle(color: Colors.black87,fontSize: 32.0),),
            )
          )
        ],
      ),
    );
  }
}

class Pic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('gallery/pic.jpg');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}
class Pic1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('gallery/pic1.jpg');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}

class Pic2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('gallery/pic2.jpg');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}
class Pic3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('gallery/pic3.jpg');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}
class Pic5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('gallery/pic5.jpg');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}
class Pic6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('gallery/pic6.jpg');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}
class Pic7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('gallery/pic7.jpg');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}
class Pic8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('gallery/pic8.jpg');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}
class Pic9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('gallery/pic.9jpg');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}

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

class Credit extends StatefulWidget {
  @override
  _CreditState createState() => _CreditState();
}

class _CreditState extends State<Credit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            "Credits",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Divider(),
            Container(
              color: Colors.black,
              height: 200.0,
              width: 300.0,
              child: Center(
                child: Container(
                  child: Vivlogo(),
                ),
              ),
            ),
            Container(
              height: 300.0,
              width: 400.0,
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 140.0,
                    width: 400.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Technical_Head(),
                        Advertising_Head(),
                        Event_Manager(),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    height: 130.0,
                    width: 400.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Computing_Head(),
                        Robotics_Head(),
                        Mechmania_Head(),
                        FunBash_Head(),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    height: 130.0,
                    width: 400.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        FunBash_Head(),
                        CyberQuest_Head(),
                        Designing_Head(),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    height: 130.0,
                    width: 400.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Photography_Head(),
                        Finance_Head(),
                        Sponsor_Head(),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    height: 130.0,
                    width: 400.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Promotion_Head(),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class Technical_Head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 120.0,
      child: ListView(
        children: <Widget>[
          Hc(),
          Text(
            "          Souvik",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
          Text(
            "        Technical",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
        ],
      ),
    );
  }
}

class Advertising_Head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 120.0,
      child: ListView(
        children: <Widget>[
          Hc(),
          Text(
            "          Rohan",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
          Text(
            "      Advertising ",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
        ],
      ),
    );
  }
}

class Event_Manager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 120.0,
      child: ListView(
        children: <Widget>[
          Hc(),
          Text(
            "           Sayan",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
          Text(
            "     Event Manager",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
        ],
      ),
    );
  }
}

class Computing_Head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 120.0,
      child: ListView(
        children: <Widget>[
          Hc(),
          Text(
            "            Atri",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
          Text(
            "     Computing ",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
        ],
      ),
    );
  }
}

class Robotics_Head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 120.0,
      child: ListView(
        children: <Widget>[
          Hc1(),
          Text(
            "          Shreya",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
          Text(
            "        Robotics",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
        ],
      ),
    );
  }
}

class Mechmania_Head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 120.0,
      child: ListView(
        children: <Widget>[
          Hc(),
          Text(
            "            Faiz",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
          Text(
            "     Mechmania",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
        ],
      ),
    );
    ;
  }
}

class CyberQuest_Head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 120.0,
      child: ListView(
        children: <Widget>[
          Hc(),
          Text(
            "        Jayabrata",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
          Text(
            "       Cyberquest",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
        ],
      ),
    );
  }
}

class FunBash_Head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 120.0,
      child: ListView(
        children: <Widget>[
          Hc1(),
          Text(
            "          Kalpita",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
          Text(
            "         FunBash",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
        ],
      ),
    );
    ;
  }
}

class Designing_Head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 120.0,
      child: ListView(
        children: <Widget>[
          Hc(),
          Text(
            "          Agniva",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
          Text(
            "        Designing",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
        ],
      ),
    );
  }
}

class Promotion_Head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 120.0,
      child: ListView(
        children: <Widget>[
          Hc(),
          Text(
            "         Sayan G",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
          Text(
            "        Promotion",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
        ],
      ),
    );
  }
}

class Photography_Head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 120.0,
      child: ListView(
        children: <Widget>[
          Hc(),
          Text(
            "       Avik,daniel",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
          Text(
            "     Photography",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
        ],
      ),
    );
  }
}

class Finance_Head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 120.0,
      child: ListView(
        children: <Widget>[
          Hc1(),
          Text(
            "            Nishi",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
          Text(
            "        Promotion",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
        ],
      ),
    );
  }
}

class Sponsor_Head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 120.0,
      child: ListView(
        children: <Widget>[
          Hc(),
          Text(
            "         Alekhya ",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
          Text(
            "        Sponsers",
            style: TextStyle(fontSize: 15.0, color: Colors.teal),
          ),
        ],
      ),
    );
  }
}

class Hc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('gallery/male.png');
    Image image = Image(image: assetImage);
    return Container(
      height: 80.0,
      width: 60.0,
      child: image,
    );
  }
}

class Hc1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('gallery/female.png');
    Image image = Image(image: assetImage);
    return Container(
      height: 80.0,
      width: 60.0,
      child: image,
    );
  }
}

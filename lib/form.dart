import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class FormDetails extends StatefulWidget {
  @override
  _FormDetailsState createState() => _FormDetailsState();
}

class _FormDetailsState extends State<FormDetails> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text("Register Here..."),
        backgroundColor: Colors.blueGrey,
      ),
      url: "https://docs.google.com/forms/d/e/1FAIpQLSfyBhPVLrfW4Ssf4----qkrZJ0CfhL_9vqDzbt4gBlvdPhUHg/viewform?usp=sf_link",
    );
  }
}

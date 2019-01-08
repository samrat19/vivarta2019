import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Url extends StatefulWidget {

  final String url;

  Url(this.url);

  @override
  _UrlState createState() => _UrlState(this.url);
}

class _UrlState extends State<Url> {

  final String url;

  _UrlState(this.url);

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text("Prepare to take part",),
        backgroundColor: Colors.teal,
      ),
      url: this.url,
    );
  }
}
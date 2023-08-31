import 'package:flutter/material.dart';
import 'package:widgets_test_project/network/api.dart';
import 'package:webview_flutter/webview_flutter.dart';


import '../Code.dart';
import '../CodeScreen.dart';
import '../utils.dart';

class WebViewsWidget extends StatefulWidget {
  final String url;

  WebViewsWidget({required this.url});

  @override
  _WebViewsWidgetState createState() => _WebViewsWidgetState();
}

class _WebViewsWidgetState extends State<WebViewsWidget> {
  final _key = UniqueKey();

  @override
  void initState() {
    //Hide banner ad if it isn't already hidden
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'WebView Widget',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: Utils.ubuntuRegularFont),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CodeScreen(code: Code.tooltipCode),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.open_in_browser),
            onPressed: () => Utils.launchURL(widget.url),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: WebViewWidget(
                controller: WebViewController()..loadRequest(Uri.parse(url))),
          ),
        ],
      ),
    );
  }
}

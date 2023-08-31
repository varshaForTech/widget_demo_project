import 'package:flutter/material.dart';
import 'package:widgets_test_project/utils.dart';



class ComingSoon extends StatefulWidget {
  @override
  _ComingSoonState createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {

  @override
  void initState() {
    //Hide banner ad if it isn't already hidden
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(24.0),
              child: Icon(
                Icons.build,
                size: 100,
                color: Colors.black87,
              ),
            ),
            Text(
              "Coming soon....",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: Utils.ubuntuRegularFont,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Colors.black87),
            )
          ],
        ),
      ),
    );
  }
}

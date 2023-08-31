import 'package:flutter/material.dart';
import 'package:widgets_test_project/Code.dart';
import 'package:widgets_test_project/CodeScreen.dart';
import 'package:widgets_test_project/utils.dart';



class SnackBarWidget extends StatefulWidget {
  @override
  _SnackBarWidgetState createState() => _SnackBarWidgetState();
}

class _SnackBarWidgetState extends State<SnackBarWidget> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  void initState() {
    //Hide banner ad if it isn't already hidden
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'SnackBar Widget',
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
                builder: (context) => CodeScreen(code: Code.snackBarWidgetCode),
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text('Show simple SnackBar'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).colorScheme.background),
                  foregroundColor: MaterialStateProperty.all(
                      Theme.of(context).colorScheme.secondary),
                ),
                onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: Duration(milliseconds: 500),
                    content: Text("Simple SnackBar"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text('Show elevated SnackBar'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).colorScheme.background),
                  foregroundColor: MaterialStateProperty.all(
                      Theme.of(context).colorScheme.secondary),
                ),
                onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: Duration(milliseconds: 500),
                    elevation: 6.0,
                    behavior: SnackBarBehavior.floating,
                    content: Text("Elevated SnackBar"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text('Show custom layout SnackBar'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).colorScheme.background),
                  foregroundColor: MaterialStateProperty.all(
                      Theme.of(context).colorScheme.secondary),
                ),
                onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: Duration(milliseconds: 500),
                    elevation: 6.0,
                    behavior: SnackBarBehavior.floating,
                    content: Row(
                      children: <Widget>[
                        Icon(Icons.thumb_up),
                        SizedBox(width: 20.0),
                        Expanded(
                          child: Text("Hello!"),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets_test_project/utils.dart';


import '../Code.dart';
import '../CodeScreen.dart';

class AlertDialogWidget extends StatefulWidget {
  @override
  _AlertDialogWidgetState createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
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
          'AlertDialog Widget',
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
                builder: (context) =>
                    CodeScreen(code: Code.alertDialogWidgetCode),
              ),
            ),
          )
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.background)),
                  child: Text(
                    "Cupertino",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  onPressed: () => {
                    showDialog(
                      context: context,
                      builder: (_) => CupertinoAlertDialog(
                        title: Text("Accept Changes?"),
                        content: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Choose one"),
                        ),
                        actions: <Widget>[
                          CupertinoDialogAction(
                            child: Text("No"),
                            onPressed: () => Navigator.pop(context),
                          ),
                          CupertinoDialogAction(
                            child: Text("Yes"),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    ),
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.background)),
                  child: Text(
                    "Material",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  onPressed: () => {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        elevation: 24.0,
                        backgroundColor: Theme.of(context).canvasColor,
                        title: Text("Accept Changes?"),
                        content: Text("Choose one"),
                        actions: <Widget>[
                          TextButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Theme.of(context).colorScheme.background)),
                            child: Text(
                              "No",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                            ),
                            onPressed: () => Navigator.pop(context),
                          ),
                          TextButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Theme.of(context).colorScheme.background)),
                            child: Text(
                              "Yes",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                            ),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    ),
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

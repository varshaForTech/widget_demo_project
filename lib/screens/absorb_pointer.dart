import 'package:flutter/material.dart';
import 'package:widgets_test_project/utils.dart';
import 'package:widgets_test_project/utils.dart';

import '../Code.dart';
import '../CodeScreen.dart';

class AbsorbPointerWidget extends StatefulWidget {
  @override
  _AbsorbPointerWidgetState createState() => _AbsorbPointerWidgetState();
}

class _AbsorbPointerWidgetState extends State<AbsorbPointerWidget> {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();
  var _actionIcon = Icons.blur_on;
  var _isAbsorbing = false;

  @override
  void dispose() {
    // Hide banner ad if it isn't already

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'AbsorbPointer Widget',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: Utils.ubuntuRegularFont),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(_actionIcon),
            onPressed: () => setState(() {
              _isAbsorbing == false
                  ? _isAbsorbing = true
                  : _isAbsorbing = false;

              _isAbsorbing
                  ? _actionIcon = Icons.blur_off
                  : _actionIcon = Icons.blur_on;

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Absorbing Property changed to $_isAbsorbing"),
                  duration: const Duration(milliseconds: 1000),
                ),
              );
            }),
          ),
          IconButton(
            icon: const Icon(Icons.code),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CodeScreen(code: Code.absorbPointerCode),
              ),
            ),
          )
        ],
      ),

      /// Tooltip uses your theme data to control its background color and
      /// the text color.
      /// Code from [Tooltip doc] :
      /// textTheme: theme.brightness == Brightness.dark ? theme.textTheme : theme.primaryTextTheme,
      /// background: theme.backgroundColor,
      body: AbsorbPointer(
        absorbing: _isAbsorbing,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(24),
                child: Text(
                  "Absorb Pointer Enabled: $_isAbsorbing",
                  style: TextStyle(
                      color: Theme.of(context).backgroundColor,
                      fontSize: 14.0,
                      fontFamily: Utils.ubuntuRegularFont),
                  textAlign: TextAlign.center,
                ),
              ),
              Wrap(
                spacing: 20,
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
                runSpacing: 48,
                children: <Widget>[
                  Tooltip(
                    message: "Default Tooltip",
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      child: const Center(
                        child: Text(
                          'Long Press',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontFamily: Utils.ubuntuRegularFont),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "Tooltip with an offset",
                    verticalOffset: 54,
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.orange,
                      child: const Center(
                        child: Text(
                          'Long Press',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontFamily: Utils.ubuntuRegularFont),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "Tooltip with custom height",
                    height: 50,
                    verticalOffset: 54,
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                      child: const Center(
                        child: Text(
                          'Long Press',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontFamily: Utils.ubuntuRegularFont),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    iconSize: 100,
                    onPressed: () {},
                    icon: const Icon(Icons.insert_emoticon),
                    tooltip: "Default Icon Tooltip",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

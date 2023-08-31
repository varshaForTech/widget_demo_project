import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widgets_test_project/settings.dart';
import 'package:widgets_test_project/utils.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'syntax_highlighter.dart';

class CodeScreen extends StatefulWidget {
  final String code;

  CodeScreen({required this.code});

  @override
  CodeScreenState createState() => CodeScreenState();
}

class CodeScreenState extends State<CodeScreen> {
  SyntaxHighlighterStyle _style = SyntaxHighlighterStyle.lightThemeStyle();
  var _actionIcon = Icons.brightness_low;
  var _isDarkThemeSet = false;
  var _bgColor = Colors.white;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final ValueNotifier<bool> padding = ValueNotifier<bool>(false);

  @override
  void initState() {
    _getValueFromSP(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: _bgColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Code',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: Utils.ubuntuRegularFont),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(_actionIcon),
            onPressed: () {
              setDarkTheme(_isDarkThemeSet ? false : true, context);
              if (_isDarkThemeSet) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    elevation: 6.0,
                    behavior: SnackBarBehavior.floating,
                    content: Text("System wide Dark Theme applied"),
                    duration: Duration(milliseconds: 3000),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    elevation: 6.0,
                    behavior: SnackBarBehavior.floating,
                    content: Text("System wide Light Theme applied"),
                    duration: Duration(milliseconds: 3000),
                  ),
                );
              }
            },
          ),
        ],
      ),

      /// Scrollbar widget to show scrollbar while scrolling
      body: WillPopScope(
        onWillPop: _willPopCallback,
        child: SafeArea(
          child: Scrollbar(
            /// For horizontal scrolling
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                width: 800.0,
                child: Scrollbar(
                  /// For vertical scrolling
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int i) {
                      return Container(
                        padding: EdgeInsets.all(8.0),
                        child: SelectableText.rich(
                          DartSyntaxHighlighter(_style).format(widget.code),
                          showCursor: false,
                          cursorColor: Colors.blue,
                          cursorRadius: Radius.circular(5),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.white,
        onPressed: () {
          Clipboard.setData(ClipboardData(text: widget.code));
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              elevation: 6.0,
              behavior: SnackBarBehavior.floating,
              content: Text("Copied to Clipboard"),
            ),
          );
        },
        label: const Text(
          "Copy",
          style: TextStyle(color: Colors.black87),
        ),
        icon: const Icon(
          Icons.content_copy,
          color: Colors.black87,
        ),
      ),
    );
  }

  setDarkTheme(bool set, BuildContext context) {
    if (set) {
      setState(() {
        _actionIcon = Icons.brightness_high;
        _style = SyntaxHighlighterStyle.darkThemeStyle();
        _isDarkThemeSet = true;
        _bgColor = Colors.black;
      });
    } else {
      setState(() {
        _actionIcon = Icons.brightness_low;
        _style = SyntaxHighlighterStyle.lightThemeStyle();
        _isDarkThemeSet = false;
        _bgColor = Colors.white;
      });
    }

    Provider.of<Settings>(context, listen: false).setDarkMode(set);
  }

  /// Method to get value from shared preferences
  _getValueFromSP(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      if (prefs.getBool('isDarkMode') != null) {
        _isDarkThemeSet = prefs.getBool('isDarkMode') ?? false;
        setDarkTheme(_isDarkThemeSet, context);
      } else {
        _isDarkThemeSet = false;
        setDarkTheme(_isDarkThemeSet, context);
      }
    });
  }

  ///Hide banner ad if back is pressed
  Future<bool> _willPopCallback() async {
    return true; // return true if the route to be popped
  }
}

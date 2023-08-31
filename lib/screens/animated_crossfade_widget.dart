import 'package:flutter/material.dart';
import 'package:widgets_test_project/Code.dart';
import 'package:widgets_test_project/CodeScreen.dart';
import 'package:widgets_test_project/utils.dart';



class AnimatedCrossFadeWidget extends StatefulWidget {
  @override
  _AnimatedCrossFadeWidgetState createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  var crossFadeView = CrossFadeState.showFirst;

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
          'AnimatedCrossFade Widget',
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
                    CodeScreen(code: Code.animatedCrossFadeWidgetCode),
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedCrossFade(
              crossFadeState: crossFadeView,
              duration: Duration(milliseconds: 1000),
              firstChild: Container(
                width: 300,
                height: 300,
                color: Colors.lightBlue,
                child: Center(
                  child: Text(
                    "Flutter Widgets",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
              secondChild: Container(
                width: 300,
                height: 300,
                color: Colors.lightBlue,
                child: Center(
                  child: Text(
                    "Is the best :)",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).colorScheme.background)),
                child: Text(
                  "Cross Fade",
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                onPressed: () => setState(() {
                  crossFadeView = crossFadeView == CrossFadeState.showFirst
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst;
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

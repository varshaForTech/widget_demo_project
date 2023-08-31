import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:widgets_test_project/Code.dart';
import 'package:widgets_test_project/CodeScreen.dart';
import 'package:widgets_test_project/utils.dart';

class ExpandedWidget extends StatefulWidget {
  @override
  _ExpandedWidgetState createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  ///Flex factor for 1st widget
  int _flexFactor0 = 1;

  ///Flex factor for 2nd widget
  int _flexFactor1 = 2;

  ///Flex factor for 3rd widget
  int _flexFactor2 = 1;

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
        title: const Text(
          'Expanded Widget',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: Utils.ubuntuRegularFont),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.info_outline,
              color: Theme.of(context).colorScheme.background,
            ),
            onPressed: () => showDialog(
              context: context,
              builder: (_) => AlertDialog(
                contentPadding: const EdgeInsets.all(0),
                titlePadding: const EdgeInsets.only(top: 28),
                title: const Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Description",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: Utils.ubuntuRegularFont),
                      ),
                    ],
                  ),
                ),
                content: Container(
                  padding: const EdgeInsets.all(0),
                  margin: const EdgeInsets.all(0),
                  child: SvgPicture.asset(
                    Utils.expanded_img,
                    semanticsLabel: "Expanded Description",
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.code),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CodeScreen(code: Code.expandedCode),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: const Color(0xFFe0e0e0),
              child: Row(
                children: <Widget>[
                  ///First flexible widget
                  Expanded(
                    flex: _flexFactor0,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          color: const Color(0xFF2196f3),
                          width: 48.0,
                          height: 48.0,
                          child: Center(
                            child: Text(
                              '$_flexFactor0',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        onTap: () => setState(() {
                          _flexFactor0++;
                        }),
                      ),
                    ),
                  ),

                  ///Second flexible widget
                  Expanded(
                    flex: _flexFactor1,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          color: const Color(0xFF673ab7),
                          width: 48.0,
                          height: 48.0,
                          child: Center(
                            child: Text(
                              '$_flexFactor1',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        onTap: () => setState(() {
                          _flexFactor1++;
                        }),
                      ),
                    ),
                  ),

                  ///Third flexible widget
                  Expanded(
                    flex: _flexFactor2,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          color: const Color(0xFF009688),
                          width: 48.0,
                          height: 48.0,
                          child: Center(
                            child: Text(
                              '$_flexFactor2',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        onTap: () => setState(() {
                          _flexFactor2++;
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ///Click on this button to RESET the values of flex values
            Container(
              margin: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () => setState(() {
                  _flexFactor0 = 1;
                  _flexFactor1 = 2;
                  _flexFactor2 = 1;
                }),
                child: const Text('RESET'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

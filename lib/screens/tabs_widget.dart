import 'package:flutter/material.dart';
import 'package:widgets_test_project/Code.dart';
import 'package:widgets_test_project/CodeScreen.dart';
import 'package:widgets_test_project/utils.dart';



class TabsWidget extends StatefulWidget {
  @override
  _TabsWidgetState createState() => _TabsWidgetState();
}

class _TabsWidgetState extends State<TabsWidget> {
  final List<Tab> myTabs = <Tab>[
    Tab(text: "Tab 1", icon: Icon(Icons.looks_one)),
    Tab(text: "Tab 2", icon: Icon(Icons.looks_two)),
  ];

  @override
  void initState() {
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //Wrap everything in DefaultTabController
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Tabs Widget',
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
                          CodeScreen(code: Code.tabsWidgetCode))),
            )
          ],
          //Specify the tabs for your view
          bottom: TabBar(
            tabs: myTabs,
            indicatorColor: Theme.of(context).backgroundColor,
          ),
        ),
        //Provide each tab with its own content
        body: TabBarView(
          children: myTabs.map((Tab tab) {
            return Center(
              child: Text(
                'This is the ${tab.text}',
                style: const TextStyle(fontSize: 16),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

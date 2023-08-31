import 'package:flutter/material.dart';
import 'package:widgets_test_project/model/list_Item.dart';

/*
 * Defining a widget for list item
 */

Widget listItemDesign(BuildContext context, ListItem item, int index) => Card(
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      color: item.title == "Rate the App"
          ? Colors.blue
          : Theme.of(context).primaryColor,
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, '/${item.title}'),
        splashColor: Colors.cyan[100],
        highlightColor: Colors.transparent,
        child: ListTile(
          title: item.title == "Rate the App"
              ? Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '${item.title}',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(Icons.insert_emoticon, color: Colors.white),
                      )
                    ],
                  ),
                )
              : item.description.isNotEmpty
                  ? Text(
                      '${index + 1}. ${item.title}',
                      style: TextStyle(
                          color: Theme.of(context).backgroundColor,
                          fontSize: 16.0),
                    )
                  : RichText(
                      text: TextSpan(
                        /// A default style for all the TextSpans below.
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                          color: Theme.of(context).backgroundColor,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: "${index + 1}. ${item.title} "),
                          const TextSpan(
                            text: "(coming soon)",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
        ),
      ),
    );

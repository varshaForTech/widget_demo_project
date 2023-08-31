import 'package:flutter/material.dart';

class ListItem {
  late String title;
  late String description;
  BuildContext? context;
  late Color menuColor;

  ListItem(
      {this.title = "",
      this.context,
      this.description = "",
      this.menuColor = Colors.white});
}

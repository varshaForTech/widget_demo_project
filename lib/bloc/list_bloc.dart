import 'dart:async';

import 'package:widgets_test_project/model/list_Item.dart';
import 'package:widgets_test_project/viewmodel/list_viewmodel.dart';

class ListBloc {
  final _listViewModel = ListViewModel(listItems: []);
  final _listController = StreamController<List<ListItem>>();

  Stream<List<ListItem>> get listItems => _listController.stream;

  ListBloc() {
    _listController.add(_listViewModel.getListItems());
  }
}

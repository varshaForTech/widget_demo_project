import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:widgets_test_project/bloc/list_bloc.dart';
import 'package:widgets_test_project/model/list_Item.dart';
import 'package:widgets_test_project/utils.dart';
import 'package:widgets_test_project/widgets/home_list_item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

/// WidgetsBindingObserver helps to keep track of the app lifecycle state
class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  late BuildContext _buildContext;
  var versionNumber;
  bool isFabVisible = true;
  late ScrollController _hideButtonController;
  bool isCheckBoxChecked = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    //Dispose the Ad if it isn't already

    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    Utils.getVersion().then((value) {
      versionNumber = value;
    });
    isFabVisible = true;
    _hideButtonController = ScrollController();
    _hideButtonController.addListener(
      () {
        if (_hideButtonController.position.userScrollDirection ==
            ScrollDirection.reverse) {
          if (isFabVisible == true) {
            setState(() => isFabVisible = false);
          }
        } else {
          if (_hideButtonController.position.userScrollDirection ==
              ScrollDirection.forward) {
            if (isFabVisible == false) {
              setState(() => isFabVisible = true);
            }
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    _buildContext = context;
    return homePageScaffold(context);
  }

  Widget homePageScaffold(BuildContext context) => Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.transparent,
        ),
        child: WillPopScope(
          onWillPop: _willPopCallback,
          child: Scaffold(
            key: _scaffoldKey,
            body: sliverWidgetList(),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
          ),
        ),
      );

  Widget sliverWidgetList() {
    ListBloc listBloc = ListBloc();
    return StreamBuilder<List<ListItem>>(
        stream: listBloc.listItems,
        builder: (context, snapshot) {
          return snapshot.hasData
              ? CustomScrollView(
                  controller: _hideButtonController,
                  //This is to contain Sliver Elements
                  slivers: <Widget>[
                    appBar(context, snapshot.data!),
                    const SliverPadding(
                      padding: EdgeInsets.all(4.0),
                    ),
                    SliverPadding(
                      sliver: bodyList(snapshot.data!),
                      padding: const EdgeInsets.only(bottom: 12.0),
                    ),
                  ],
                )
              : const Center(child: CircularProgressIndicator());
        });
  }

  Widget appBar(BuildContext context, List<ListItem> listItems) => SliverAppBar(
        backgroundColor: Theme.of(context).primaryColorDark,
        pinned: true,
        elevation: 3.0,
        forceElevated: false,
        expandedHeight: 80.0,
        flexibleSpace: FlexibleSpaceBar(
          titlePadding: const EdgeInsets.only(
              left: 0.0, top: 0.0, right: 0.0, bottom: 14.0),
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 12.0, left: 8.0),
                child: GestureDetector(
                  child: const FlutterLogo(
                    textColor: Colors.white,
                  ),
                ),
              ),
              const Text(
                Utils.appName,
                style: TextStyle(
                    fontFamily: Utils.ubuntuRegularFont, fontSize: 16),
              ),
              IconButton(
                  onPressed: () {
                    showSearch(
                        context: context, delegate: SearchWidgets(listItems));
                  },
                  icon: const Icon(Icons.search))
            ],
          ),
        ),
      );

  Widget bodyList(List<ListItem> listItems) => SliverList(
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return listItemDesign(context, listItems[index], index);
        }, childCount: listItems.length),
      );
}

Future<bool> _willPopCallback() async {
  return true; // return true if the route to be popped
}

class SearchWidgets extends SearchDelegate {
  String selectedResult = "";
  List<ListItem> listItems = [];

  SearchWidgets(this.listItems);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: const Icon(Icons.close),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(selectedResult),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<ListItem> suggestionList = [];

    query.isEmpty
        ? suggestionList = listItems
        : suggestionList.addAll(listItems.where(
            // In the false case
            (element) => element.title.toLowerCase().contains(query.toLowerCase()),
          ));

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            suggestionList[index].title,
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/${suggestionList[index].title}');
          },
        );
      },
    );
  }
}

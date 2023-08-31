import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import 'package:url_launcher/url_launcher.dart';

class Utils {
  /*
   * Method to handle launching of URL
   */
  static launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static Future<String> getVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }

  ///Method to get a random color
  static getRandomColor() =>
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
          .withOpacity(1.0);

  static List<Color> buttonGradient = [
    Colors.cyan.shade600,
    Colors.blue.shade600
  ];

  //routes
  static const String methodChannelRoute = "/methodChannel";
  static const String codeRoute = "/code";
  static const String videoView = "/video";
  static const String webView = "/webview";
  static const String homeRoute = "/home";
  static const String safeArea = "/Safe Area";
  static const String expanded = "/Expanded";
  static const String wrap = "/Wrap";
  static const String animatedContainer = "/Animated Container";
  static const String opacity = "/Opacity";
  static const String futureBuilder = "/Future Builder";
  static const String fadeTransition = "/Fade Transition";
  static const String floatingActionButton = "/Floating Action Button";
  static const String pageView = "/Page View";
  static const String table = "/Table";
  static const String sliverAppBar = "/Sliver App Bar";
  static const String sliverList = "/Sliver List";
  static const String sliverGrid = "/Sliver Grid";
  static const String fadeInImage = "/Fade In Image";
  static const String streamBuilder = "/Stream Builder";
  static const String inheritedModel = "/Inherited Model";
  static const String clipRRect = "/ClipRRect";
  static const String hero = "/Hero";
  static const String hero2 = "/Hero2";
  static const String customPaint = "/Custom Paint";
  static const String tooltip = "/Tooltip";
  static const String fittedBox = "/Fitted Box";
  static const String layoutBuilder = "/Layout Builder";
  static const String absorbPointer = "/Absorb Pointer";
  static const String transform = "/Transform";
  static const String backDropFilter = "/Back Drop Filter";
  static const String align = "/Align";
  static const String positioned = "/Positioned";
  static const String animatedBuilder = "/Animated Builder";
  static const String dismissible = "/Dismissible";
  static const String sizedBox = "/Sized Box";
  static const String valueListenableBuilder = "/Value Listenable Builder";
  static const String draggable = "/Draggable";
  static const String animatedList = "/AnimatedList";
  static const String flexible = "/Flexible";
  static const String mediaQuery = "/MediaQuery";
  static const String spacer = "/Spacer";
  static const String inheritedWidget = "/InheritedWidget";
  static const String animatedIcon = "/AnimatedIcon";
  static const String aspectRatio = "/AspectRatio";
  static const String limitedBox = "/LimitedBox";
  static const String placeholder = "/Placeholder";
  static const String richText = "/RichText";
  static const String reorderableListView = "/ReorderableListView";
  static const String animatedSwitcher = "/AnimatedSwitcher";
  static const String animatedPositioned = "/AnimatedPositioned";
  static const String animatedPadding = "/AnimatedPadding";
  static const String indexedStack = "/IndexedStack";
  static const String semantics = "/Semantics";
  static const String constrainedBox = "/ConstrainedBox";
  static const String stack = "/Stack";
  static const String animatedOpacity = "/AnimatedOpacity";
  static const String fractionallySizedBox = "/FractionallySizedBox";
  static const String listView = "/ListView";
  static const String listTile = "/ListTile";
  static const String container = "/Container";
  static const String selectableText = "/SelectableText";
  static const String dataTable = "/DataTable";
  static const String slider = "/Slider";
  static const String alertDialog = "/AlertDialog";
  static const String animatedCrossFade = "/AnimatedCrossFade";
  static const String draggableScrollableSheet = "/DraggableScrollableSheet";
  static const String colorFiltered = "/ColorFiltered";
  static const String toggleButtons = "/ToggleButtons";
  static const String cupertinoActionSheet = "/CupertinoActionSheet";
  static const String tweenAnimationBuilder = "/TweenAnimationBuilder";
  static const String image = "/Image";
  static const String tabs = "/Tabs";
  static const String drawer = "/Drawer";
  static const String snackBar = "/SnackBar";
  static const String listWheelScrollView = "/ListWheelScrollView";
  static const String shaderMask = "/ShaderMask";
  static const String notificationListener = "/NotificationListener";
  static const String builder = "/Builder";
  static const String clipPath = "/ClipPath";
  static const String circularProgressIndicator = "/ProgressIndicator";
  static const String divider = "/Divider";
  static const String ignorePointer = "/IgnorePointer";
  static const String cupertinoActivityIndicator =
      "/CupertinoActivityIndicator";
  static const String clipOval = "/ClipOval";
  static const String animatedWidget = "/AnimatedWidget";
  static const String padding = "/Padding";
  static const String filePicker = "/File Picker";
  static const String rxDart = "/Rx Dart";

  static const String rateApp = "/Rate the App";
  static const String slack_invite =
      "https://join.slack.com/t/flutter-worldwide/shared_invite/enQtNzMyMjM3Nzc2Njc0LTdmYWI5ZGU5YjgxNjliYzhjZTU0MWNkZTA5MjY4ZmJiMjg4ZGQ2ZDQwNDdiOTdiOWVkZDA2NjY5YjllMGQ1M2M";

  //strings
  static const String appName = "Flutter Widgets";

  //fonts
  static const String ubuntuFont = "Ubuntu";
  static const String crimsonFont = "Crimson";
  static const String ubuntuRegularFont = "Ubuntu-Regular.ttf";
  static const String crimsonRegularFont = "CrimsonText-Regular.ttf";

  //descriptions
  static const String safeAreaDescription =
      "Rounded corner and notches complicate the layout of your app."
      "\nWrap your main widget with this widget to prevent unnecessary clipping and overlapping."
      "\nIt uses MediaQuery to measure the screen dimensions and create necessary padding for your app on the devices (both iOS and Android). "
      "\nFor more info click the link below";
  static const String expandedDescription =
      "The most common layout widgets used in flutter are rows and columns."
      "\nYou can adjust the children of these parent layouts in many ways like placing them together, distribute the"
      "\navailable space equally etc. If a child is wrapped in Expanded widget then it'll stretch to occupy the left over space. "
      "\nThe priority of expansion is set using the flex value.";
  static const String wrapDescription =
      "This widget is just like a column or a row widget. The difference is just that it does not face"
      "issues like running out of room on the screen."
      "\nWhat is does is it wraps to the next line when it runs out of space.";
  static const String animatedContainerDescription =
      "This is one of flutter's implicit animation widget. Make changes to this widget itself"
      " to perform animations or wrap another widget with this one to animate it.\nEvery change made will be reflected with an animation.";
  static const String opacityDescription =
      "This widget is used to change the visibility of a widget. The change can be sudden or with an animation.";
  static const String futureBuilderDescription =
      "This widget lets you control your UI depending on the state of the Future connected with it. You "
      "can show a widget while your future is busy and then another one when data is available.";
  static const String fadeTransitionDescription =
      "This widget lets you fade another widget in and out. You add a child and provide it with an"
      " animation. We use Animation Controller to control the animation.";
  static const String floatingActionButtonDescription =
      "This widget lets to place a FAB on the screen. It works really well with the BottomAppBar."
      " You can change the shape, size and position of the FAB according to your needs.";
  static const String pageViewDescription =
      "This widget is used to create a screen with multiple pages. You can easily swipe through them. You can"
      " also control the scroll direction property and set it to horizontal or vertical.";
  static const String tableDescription =
      "If you have a group of widgets with varying dimentions then it can be difficult to create a custom table of diffrent"
      " rows and columns. Here is when Table Widget comes to the rescue. This widget accomodates all of its children easily.";
  static const String sliverAppBarDescription =
      "This widget allows you to create a collapsing app bar that animates as you scroll. This widget is used"
      " with CustomScrollView Widget to provide the scroll behaviour for the app bar.";
  static const String sliverListDescription =
      "This widget lets you build a list of items. It generates it's item lazily as they scroll into view and is"
      " efficient for a list with large dataset.";
  static const String sliverGridDescription =
      "This widget lets you build a list of items that you can arrange in form of a Grid. It generates it's item"
      " lazily as they scroll into view and is efficient for a list with large dataset.";
  static const String fadeInImageDescription =
      "This widget lets you display a placeholder while your app fetches image from the network. You can use this"
      " in your list of feed or while loading profile image in you app.";
  static const String streamBuilderDescription =
      "This widget lets you build you UI while listning to a stream of data. It rebuilds itsrlf for every new event";
  static const String inheritedModelDescription =
      "This widget lets you control properties of decendent widgets depending on the properties of the ancestor widget"
      " This can be of use in case of nested widgets.";
  static const String clipRRectDescription =
      "This widget lets you smooth out the corners of your other widgets. You can specify a radius value and"
      " the corners will be clipped. You can specify the clicp behaviour as well";
  static const String heroDescription =
      "This widget lets you perform hero transition in your app. This helps user to know that they have switched screens"
      " while maintaining the focus. You can change the shape of widgets as well and this widget will create smooth shape transitions as you go from "
      " one screen to another";
  static const String customPaintDescription =
      "This widget lets you create your own custom UI elements. You can build Lines, paths, ectangles, circles"
      " arcs, images etc. You have the full control of the properties of this widget.";
  static const String tooltipDescription =
      "This widget lets you provide additional information of a widget. People with impared vision can long press on"
      " a widget to get an audio feedback of what it is. Similarly, you can provide information for an icon as to what will happen if a user"
      " clicks on it.";
  static const String fittedBoxDescription =
      "This widget lets you define the rules for the child widgets to follow while adjusting themselves to fit inside"
      " the parent widget. The child widget might scale or have to be clipped depending on the fit type.";
  static const String layoutBuilderDescription =
      "This widget lets you make smrt decisions regarding your layout. You can make use of constraints and decide what kind"
      " of a layout you want your users to see.";
  static const String absorbPointerDescription =
      "This widget lets you control the touch events for the widgets. If enabled, none of the widgets wrapped"
      " with this widget will be able to detect user touch events.";
  static const String transformDescription =
      "This widget lets you transform a widget's scaling, ratation or positional properties. These are some basic ones"
      ", you can create some really cool animations with this widget as well.";
  static const String backDropFilterDescription =
      "This widget lets you apply a filter over other widgets. For example, if you want to blur out a specific"
      " part of an image. This widget works best with a Stack widget.";
  static const String alignDescription =
      "This widget lets you position a child widget inside it's parent widget. You can place the child widget at the center,"
      " left corner or right corner to name a few.";
  static const String positionedDescription =
      "This widget lets you positon a widget inside a Stack. You can provide a widget with custom positions with the help of"
      " properties like - top, bottom, left, right";
  static const String animatedBuilderDescription =
      "This widget lets you change properties of a widget like size, roatation etc with an animation.";
  static const String dismissibleDescription =
      "This widget lets you create a dismissible list item. You can cutomize the left and right swipe gestures"
      " in terms of the UI";
  static const String sizedBoxDescription =
      "This widget lets you give a fixed size to the child widget. This widget can also be used to create a gap between"
      " two widgets.";
  static const String valueListenableBuilderDescription =
      "Use ValueListenableBuilder to update your UI whenever the data changes. You can also use it to animate widgets";
  static const String draggableDescription =
      "Use Draggable to move and drag your widgets around. You can use it to build UIs for swapping around email addresses in an email or documents to a new folder.";
  static const String animatedListDescription =
      "Use AnimatedList to make your lists more dynamic. You can use it to animate your lists when inserting or removing items.";
  static const String flexibleDescription =
      "Use Flexible for resizing your widgets in rows and columns. You can use it to adjust how much space different child widgets take up relative to their parent widgets.";
  static const String mediaQueryDescription =
      "Use MediaQuery to adjust your app’s UI layout based on different screen sizes. You can also use it to make UI adjustments based on user layout preferences.";
  static const String spacerDescription =
      "The Spacer widget can help you control how much space appears between widgets in a Row or Column. Just add it between two widgets and set its flex property to customize.";
  static const String inheritedWidgetDescription = "";
  static const String animatedIconDescription =
      "Use the AnimatedIcon widget to drop an animated icon straight into your app. Flutter also has a great set of inanimate icons to choose from.";
  static const String aspectRatioDescription =
      "The AspectRatio widget can be used to adjust the aspect ratio of widgets in your app. Use it to keep the ratio of your widget’s width and height consistent when changing dimensions.";
  static const String limitedBoxDescription =
      "Ever had a widget that misbehaved when given unlimited size to grow? The LimitedBox widget provides size constraints to widgets in cases where their dimensions are unbounded.";
  static const String placeholderDescription =
      "Need something to stand in for a widget you're not finished composing? Placeholder is here to help. It's a simple widget that draws an X where your widget will ultimately go!";
  static const String richTextDescription =
      "Do you want to show a line or paragraph that combines multiple styles? The RichText widget allows you to style your text. "
      "Whether you want to emphasize one word in bold and display another in a different color or font, RichText can help!";
  static const String reorderableListViewDescription =
      "The ReorderableListView widget presents a list of items that users can reorder just by dragging things where they want them to go. ";
  static const String animatedSwitcherDescription =
      "The AnimatedSwitcher widget allows you to switch between two or more widgets with an animation as you transition.";
  static const String animatedPositionedDescription =
      "AnimatedPositioned automatically transitions the child's position over a given duration whenever the given position changes. ";
  static const String animatedPaddingDescription =
      "AnimatedPadding is a great way to provide smooth buffers and spaces between widgets and screen borders."
      "Use this to dynamically change the padding of the widget and have it animate between the two values.";
  static const String indexedStackDescription =
      "Want your users to easily switch between widgets in your app? IndexedStack has you covered! "
      "Swap between widgets, without animation, and the state of the widgets is preserved. ";
  static const String semanticsDescription =
      "Flutter's Semantics widget can annotate an app's UI with information about the meaning of other widgets.";
  static const String constrainedBoxDescription =
      "Flutter's ConstrainedBox widget is great to add requirements for a widget's sizing behavior. "
      "Wrapping widgets in a ConstrainedBox lets you specify their min and max width and heights.";
  static const String stackDescription =
      "Stack allows you to overlay multiple widgets on top of each other. For example, you can use a Stack to add text over an image.";
  static const String animatedOpacityDescription =
      "Want to change how visible a widget is with a nice animation? AnimatedOpacity can help by fading a widget into view or by making it less prominent when something is not selected";
  static const String fractionallySizedBoxDescription =
      "Sometimes your design calls for dimensions that are relative. FractionallySizedBox allows you to size the child to a fraction of the total available space.";
  static const String listViewDescription =
      "Want a set of items to be viewable in a scrollable list? ListView is as simple as supplying a list of items and can be easily customized to your liking.";
  static const String listTileDescription =
      "Why spend hours working out the perfect item layout with rows, columns, containers, and various amounts of spacing and styling when you could just use a ListTile! ListTile implements the material design pattern for list items for you, leaving you to just worry about what goes in it.";
  static const String containerDescription =
      "Do you have a widget that needs some styling like background color, shape, or some size constraints? Try wrapping it in a Container widget! The Container widget helps you compose, decorate, and position child widgets.";
  static const String selectableTextDescription =
      "Have you ever wanted to make some display text in your app selectable? SelectableText is the widget for you!";
  static const String dataTableDescription =
      "Do you have some important data to show to the user in a table? Define your columns, rows, and automatically size cells with DataTable!";
  static const String sliderDescription =
      "Need a quick way to select from a range of values? The Slider widget selects a single value from a range. ";
  static const String alertDialogDescription =
      "Do you want to alert someone about something or maybe get their input? Does your app have a critical junction where users need to make an important decision? AlertDialog is the widget for you!";
  static const String animatedCrossFadeDescription =
      "Cross fade is a cinematic term in which one thing gradually fades into another. Wouldn't it be useful to have something similar, but for Flutter widgets? AnimatedCrossFade to the rescue!";
  static const String draggableScrollableSheetDescription =
      "Are you looking to drag a widget onto the screen? Does that widget have scrollable content? DraggableScrollableSheet has you covered!";
  static const String colorFilteredDescription =
      "It's easy to play around with color in Flutter widgets, and not just by modifying a color parameter. ColorFiltered widget will let you change and morph colors in weird and wonderful ways!";
  static const String toggleButtonsDescription =
      "Do you want to let your users select from a number of related options? Adding ToggleButtons to your app can help!  ";
  static const String cupertinoActionSheetDescription =
      "Are you building an iOS-style app that needs to present the user with a list of options for what to do next? CupertinoActionSheet is the widget for you!";
  static const String tweenAnimationBuilderDescription =
      "Do you want a simple animation, but none of the built-in implicit animation widgets do the trick? TweenAnimationBuilder is here for all your custom animation needs without having to worry about that AnimationController!";
  static const String imageDescription =
      "Need your app to display images? Flutter has you covered! Use the Image widget to render an image to the screen, wherever it may come from: assets, network, file system, RAM and more!";
  static const String tabsDescription =
      "Do you need to organize your widgets into tabs? The DefaultTabController, TabBar, and TabBarView widgets are for you.";
  static const String drawerDescription =
      "Need to provide navigation to other pages? Try using a Drawer!";
  static const String snackBarDescription =
      "Ever wanted to show a quick message in your app? Then SnackBar is for you! SnackBar lets you pop up a message for a few seconds at the bottom of your app.";
  static const String listWheelScrollViewDescription =
      "ListViews let the user see or choose from a number of items that wouldn't normally fit on the screen, but sometimes, an ordinary ListView is too flat and boring. Fortunately, there's ListWheelScrollView";
  static const String shaderMaskDescription =
      "ShaderMasks are one of Flutter’s hidden gems! ShaderMasks let you apply a shader to one or more widgets in the tree. There’s tons of cool effects you can achieve with shaders.";
  static const String notificationListenerDescription =
      "Use this widget to dispatch notifications? For instance, Scrollable widgets like ListView dispatch scroll notifications. Use NotificationListener to handle them!";
  static const String builderDescription =
      "Most of the time, widgets in Flutter build without looking up any extra information about their parents. Sometimes, you might write some code where the child widget needs to access the build context of a parent widget in the same build method. That's what the Builder widget is for!";
  static const String clipPathDescription =
      "Do you want your widget to have a unique shape? ClipPath allows you to define your own widget shapes! Given a CustomerClipper and a path that you define, ClipPath will constrain the widget's visible area to within this path.";
  static const String circularProgressIndicatorDescription =
      "Use CircularProgressIndicator if you want to indicate progress in a roundabout fashion and LinearProgressIndicator if you like lines";
  static const String dividerDescription =
      "The Divider widget is useful wherever you have widgets or groups of widgets that need to be separated";
  static const String ignorePointerDescription =
      "It can be useful to prevent the user from interacting with parts of your app. When the UI changes under users' fingers, that's actually a pretty common and frustrating problem. You could address this problem by disabling all interactive elements in your app, one by one, or you could use IgnorePointer.";
  static const String cupertinoActivityIndicatorDescription =
      "If you are using Cupertino widgets for your UI and your app needs a loading indicator, then CupertinoActivityIndicator is the widget for you!";
  static const String clipOvalDescription =
      "Sometimes, a picture or some other part of your screen can look too box-ish. The ClipOval widget can clip its children to round circles and ovals. Use this widget and think outside the box!";
  static const String animatedWidgetDescription =
      "There are many different options for animations. In many cases, an AnimatedWidget is all you need to make a widget animated.";
  static const String paddingDescription =
      "In an app with lots of widgets, things often get crowded. By using the Padding widget, you can add some space on any or all sides of a widget! ";
  static const String methodChannelDescription =
      "MethodChannel is a way to establish a communication bridge between Dart (Flutter's programming language) and platform-specific code (Swift for iOS or Kotlin for Android). This allows you to call platform-specific methods from your Flutter code and receive results back.";
  static const String filePickerDescription =
      "file explorer to pick single or multiple files, with extensions filtering support.";
  static const String rxDartDescription =
      "Dart comes with a very decent Streams API out-of-the-box; rather than attempting to provide an alternative to this API, RxDart adds functionality from the reactive extensions specification on top of it.";

  //images
  static const String imageDir = "assets/images";
  static const String expanded_img = "$imageDir/expanded_info.svg";
  static const String medium_img = "$imageDir/medium_icon.svg";
  static const String slack_img = "$imageDir/slack_icon.svg";
}

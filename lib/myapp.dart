import 'package:flutter/material.dart';
import 'package:widgets_test_project/CodeScreen.dart';
import 'package:widgets_test_project/app_navigator_state.dart';
import 'package:widgets_test_project/screens/WebViewWidget.dart';
import 'package:widgets_test_project/screens/absorb_pointer.dart';
import 'package:widgets_test_project/screens/alert_dialog_widget.dart';
import 'package:widgets_test_project/screens/align.dart';
import 'package:widgets_test_project/screens/animated_builder.dart';
import 'package:widgets_test_project/screens/animated_container.dart';
import 'package:widgets_test_project/screens/animated_crossfade_widget.dart';
import 'package:widgets_test_project/screens/animated_icon.dart';
import 'package:widgets_test_project/screens/animated_list.dart';
import 'package:widgets_test_project/screens/animated_opacity.dart';
import 'package:widgets_test_project/screens/animated_padding.dart';
import 'package:widgets_test_project/screens/animated_positioned.dart';
import 'package:widgets_test_project/screens/animated_switcher.dart';
import 'package:widgets_test_project/screens/animated_widget.dart';
import 'package:widgets_test_project/screens/aspect_ratio.dart';
import 'package:widgets_test_project/screens/backdrop_filter.dart';
import 'package:widgets_test_project/screens/builder.dart';
import 'package:widgets_test_project/screens/circularProgressIndicator.dart';
import 'package:widgets_test_project/screens/clip_path.dart';
import 'package:widgets_test_project/screens/clip_r_rect.dart';
import 'package:widgets_test_project/screens/clipoval.dart';
import 'package:widgets_test_project/screens/color_filtered.dart';
import 'package:widgets_test_project/screens/constrained_box.dart';
import 'package:widgets_test_project/screens/container.dart';
import 'package:widgets_test_project/screens/cupertino_action_sheet.dart';
import 'package:widgets_test_project/screens/cupertino_activity_indicator.dart';
import 'package:widgets_test_project/screens/custom_paint.dart';
import 'package:widgets_test_project/screens/datatable_widget.dart';
import 'package:widgets_test_project/screens/dismissible.dart';
import 'package:widgets_test_project/screens/divider.dart';
import 'package:widgets_test_project/screens/draggable.dart';
import 'package:widgets_test_project/screens/draggable_scrollable_sheet.dart';
import 'package:widgets_test_project/screens/expanded.dart';
import 'package:widgets_test_project/screens/fade_in_image.dart';
import 'package:widgets_test_project/screens/fade_transition.dart';
import 'package:widgets_test_project/screens/file_picker.dart';
import 'package:widgets_test_project/screens/fitted_box.dart';
import 'package:widgets_test_project/screens/flexible.dart';
import 'package:widgets_test_project/screens/floating_action_button.dart';
import 'package:widgets_test_project/screens/fractionally_sizedbox.dart';
import 'package:widgets_test_project/screens/future_builder.dart';
import 'package:widgets_test_project/screens/hero.dart';
import 'package:widgets_test_project/screens/hero2.dart';
import 'package:widgets_test_project/screens/home_page.dart';
import 'package:widgets_test_project/screens/ignore_pointer.dart';
import 'package:widgets_test_project/screens/image_widget.dart';
import 'package:widgets_test_project/screens/inherited_model.dart';
import 'package:widgets_test_project/screens/inherited_widget.dart';
import 'package:widgets_test_project/screens/layout_builder.dart';
import 'package:widgets_test_project/screens/limited_box.dart';
import 'package:widgets_test_project/screens/list_tile.dart';
import 'package:widgets_test_project/screens/list_view.dart';
import 'package:widgets_test_project/screens/media_query.dart';
import 'package:widgets_test_project/screens/method_channel.dart';
import 'package:widgets_test_project/screens/notification_listener.dart';
import 'package:widgets_test_project/screens/opacity.dart';
import 'package:widgets_test_project/screens/padding.dart';
import 'package:widgets_test_project/screens/page_view.dart';
import 'package:widgets_test_project/screens/placeholder.dart';
import 'package:widgets_test_project/screens/positioned.dart';
import 'package:widgets_test_project/screens/reorderable_listiew.dart';
import 'package:widgets_test_project/screens/rich_text.dart';
import 'package:widgets_test_project/screens/rx_dart_example.dart';
import 'package:widgets_test_project/screens/safe_area.dart';
import 'package:widgets_test_project/screens/selectable_text.dart';
import 'package:widgets_test_project/screens/semantics_widget.dart';
import 'package:widgets_test_project/screens/sized_box.dart';
import 'package:widgets_test_project/screens/slider_widget.dart';
import 'package:widgets_test_project/screens/sliver_app_bar.dart';
import 'package:widgets_test_project/screens/sliver_grid.dart';
import 'package:widgets_test_project/screens/sliver_list.dart';
import 'package:widgets_test_project/screens/spacer.dart';
import 'package:widgets_test_project/screens/stack_widget.dart';
import 'package:widgets_test_project/screens/stream_builder.dart';
import 'package:widgets_test_project/screens/table.dart';
import 'package:widgets_test_project/screens/tabs_widget.dart';
import 'package:widgets_test_project/screens/toggle_buttons.dart';
import 'package:widgets_test_project/screens/tooltip.dart';
import 'package:widgets_test_project/screens/transform.dart';
import 'package:widgets_test_project/screens/tween_animation_builder.dart';
import 'package:widgets_test_project/screens/value_listenable_builder.dart';
import 'package:widgets_test_project/screens/wrap.dart';
import 'package:widgets_test_project/settings.dart';
import 'package:widgets_test_project/themes.dart';
import 'package:widgets_test_project/utils.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'VideoView.dart';
import 'screens/drawer_widget.dart';
import 'screens/indexed_stack.dart';
import 'screens/listwheelscrollview_widget.dart';
import 'screens/shadermask_widget.dart';
import 'screens/snackbar_widget.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Here we are asynchronously passing an instance of SharedPreferences
    /// to our Settings ChangeNotifier class and that in turn helps us
    /// determine the basic app settings to be applied whenever the app is
    /// launched.
    return FutureBuilder<SharedPreferences>(
      future: SharedPreferences.getInstance(),
      builder:
          (BuildContext context, AsyncSnapshot<SharedPreferences> snapshot) {
        if (snapshot.hasData) {
          return ChangeNotifierProvider<Settings>.value(
            value: Settings(snapshot.data!),
            child: _MyApp(),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}

class _MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Utils.appName,
      theme:
          Provider.of<Settings>(context).isDarkMode ? kDarkTheme : kLightTheme,
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: false,
      navigatorKey: NavigationService.instance.navigatorKey,
      home: HomePage(),
      //all the app routes are listed here
      routes: <String, WidgetBuilder>{
        Utils.methodChannelRoute: (BuildContext context) =>
            MethodChannelExample(),
        Utils.codeRoute: (BuildContext context) => CodeScreen(code: ""),
        Utils.videoView: (BuildContext context) => VideoView(
              videoUrl: "",
              title: "",
            ),
        Utils.webView: (BuildContext context) => WebViewsWidget(url: ""),
        Utils.homeRoute: (BuildContext context) => HomePage(),
        Utils.safeArea: (BuildContext context) => SafeAreaWidget(),
        Utils.expanded: (BuildContext context) => ExpandedWidget(),
        Utils.wrap: (BuildContext context) => WrapWidget(),
        Utils.animatedContainer: (BuildContext context) =>
            AnimatedContainerWidget(),
        Utils.opacity: (BuildContext context) => OpacityWidget(),
        Utils.futureBuilder: (BuildContext context) => FutureBuilderWidget(),
        Utils.fadeTransition: (BuildContext context) => FadeTransitionWidget(),
        Utils.floatingActionButton: (BuildContext context) =>
            FloatingActionButtonWidget(),
        Utils.pageView: (BuildContext context) => PageViewWidget(),
        Utils.table: (BuildContext context) => TableWidget(),
        Utils.sliverAppBar: (BuildContext context) => SliverAppBarWidget(),
        Utils.sliverList: (BuildContext context) => SliverListWidget(),
        Utils.sliverGrid: (BuildContext context) => SliverGridWidget(),
        Utils.fadeInImage: (BuildContext context) => FadeInImageWidget(),
        Utils.streamBuilder: (BuildContext context) => StreamBuilderWidget(),
        Utils.inheritedModel: (BuildContext context) => InheritedModelWidget(),
        Utils.clipRRect: (BuildContext context) => ClipRRectWidget(),
        Utils.hero: (BuildContext context) => HeroWidget(),
        Utils.hero2: (BuildContext context) => Hero2Widget(),
        Utils.customPaint: (BuildContext context) => CustomPaintWidget(),
        Utils.tooltip: (BuildContext context) => TooltipWidget(),
        Utils.fittedBox: (BuildContext context) => FittedBoxWidget(),
        Utils.layoutBuilder: (BuildContext context) => LayoutBuilderWidget(),
        Utils.absorbPointer: (BuildContext context) => AbsorbPointerWidget(),
        Utils.transform: (BuildContext context) => TransformWidget(),
        Utils.backDropFilter: (BuildContext context) => BackdropFilterWidget(),
        Utils.align: (BuildContext context) => AlignWidget(),
        Utils.positioned: (BuildContext context) => PositionedWidget(),
        Utils.animatedBuilder: (BuildContext context) =>
            AnimatedBuilderWidget(),
        Utils.dismissible: (BuildContext context) => DismissibleWidget(),
        Utils.sizedBox: (BuildContext context) => SizedBoxWidget(),
        Utils.valueListenableBuilder: (BuildContext context) =>
            ValueListenableBuilderWidget(),
        Utils.draggable: (BuildContext context) => DraggableWidget(),
        Utils.animatedList: (BuildContext context) => AnimatedListWidget(),
        Utils.flexible: (BuildContext context) => FlexibleWidget(),
        Utils.mediaQuery: (BuildContext context) => MediaQueryWidget(),
        Utils.spacer: (BuildContext context) => SpacerWidget(),
        Utils.inheritedWidget: (BuildContext context) => InheritedWidgett(),
        Utils.animatedIcon: (BuildContext context) => AnimatedIconWidget(),
        Utils.aspectRatio: (BuildContext context) => AspectRatioWidget(),
        Utils.limitedBox: (BuildContext context) => LimitedBoxWidget(),
        Utils.placeholder: (BuildContext context) => PlaceholderWidget(),
        Utils.richText: (BuildContext context) => RichTextWidget(),
        Utils.reorderableListView: (BuildContext context) =>
            ReorderableListViewWidget(),
        Utils.animatedSwitcher: (BuildContext context) =>
            AnimatedSwitcherWidget(),
        Utils.animatedPositioned: (BuildContext context) =>
            AnimatedPositionedWidget(),
        Utils.animatedPadding: (BuildContext context) =>
            AnimatedPaddingWidget(),
        Utils.indexedStack: (BuildContext context) => IndexedStackWidget(),
        Utils.semantics: (BuildContext context) => SemanticsWidget(),
        Utils.constrainedBox: (BuildContext context) => ConstrainedBoxWidget(),
        Utils.stack: (BuildContext context) => StackWidget(),
        Utils.animatedOpacity: (BuildContext context) =>
            AnimatedOpacityWidget(),
        Utils.fractionallySizedBox: (BuildContext context) =>
            FractionallySizedBoxWidget(),
        Utils.listView: (BuildContext context) => ListViewWidget(),
        Utils.listTile: (BuildContext context) => ListTileWidget(),
        Utils.container: (BuildContext context) => ContainerWidget(),
        Utils.selectableText: (BuildContext context) => SelectableTextWidget(),
        Utils.dataTable: (BuildContext context) => DataTableWidget(),
        Utils.slider: (BuildContext context) => SliderWidget(),
        Utils.alertDialog: (BuildContext context) => AlertDialogWidget(),
        Utils.animatedCrossFade: (BuildContext context) =>
            AnimatedCrossFadeWidget(),
        Utils.draggableScrollableSheet: (BuildContext context) =>
            DraggableScrollableSheetWidget(),
        Utils.colorFiltered: (BuildContext context) => ColorFilteredWidget(),
        Utils.toggleButtons: (BuildContext context) => ToggleButtonsWidget(),
        Utils.cupertinoActionSheet: (BuildContext context) =>
            CupertinoActionSheetWidget(),
        Utils.tweenAnimationBuilder: (BuildContext context) =>
            TweenAnimationBuilderWidget(),
        Utils.image: (BuildContext context) => ImageWidget(),
        Utils.tabs: (BuildContext context) => TabsWidget(),
        Utils.drawer: (BuildContext context) => DrawerWidget(),
        Utils.snackBar: (BuildContext context) => SnackBarWidget(),
        Utils.listWheelScrollView: (BuildContext context) =>
            ListWheelScrollViewWidget(),
        Utils.shaderMask: (BuildContext context) => ShaderMaskWidget(),
        Utils.notificationListener: (BuildContext context) =>
            NotificationListenerWidget(),
        Utils.builder: (BuildContext context) => BuilderWidget(),
        Utils.clipPath: (BuildContext context) => ClipPathWidget(),
        Utils.circularProgressIndicator: (BuildContext context) =>
            CircularProgressIndicatorWidget(),
        Utils.divider: (BuildContext context) => DividerWidget(),
        Utils.ignorePointer: (BuildContext context) => IgnorePointerWidget(),
        Utils.cupertinoActivityIndicator: (BuildContext context) =>
            CupertinoActivityIndicatorWidget(),
        Utils.clipOval: (BuildContext context) => ClipOvalWidget(),
        Utils.animatedWidget: (BuildContext context) => AnimatedWidgett(),
        Utils.padding: (BuildContext context) => PaddingWidget(),
        Utils.filePicker: (BuildContext context) => const FilePickerExample(),
        Utils.rxDart: (BuildContext context) => const RxDartExample()
      },
    );
  }
}

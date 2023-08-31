import 'package:widgets_test_project/model/list_Item.dart';
import 'package:widgets_test_project/utils.dart';

class ListViewModel {
  List<ListItem> listItems;

  ListViewModel({required this.listItems});

  getListItems() {
    return listItems = <ListItem>[
      ListItem(
        title: Utils.safeArea.replaceAll(RegExp(r'/'), ''),
        description: Utils.safeAreaDescription,
      ),
      ListItem(
        title: Utils.expanded.replaceAll(RegExp(r'/'), ''),
        description: Utils.expandedDescription,
      ),
      ListItem(
        title: Utils.wrap.replaceAll(RegExp(r'/'), ''),
        description: Utils.wrapDescription,
      ),
      ListItem(
        title: Utils.animatedContainer.replaceAll(RegExp(r'/'), ''),
        description: Utils.animatedContainerDescription,
      ),
      ListItem(
        title: Utils.opacity.replaceAll(RegExp(r'/'), ''),
        description: Utils.opacityDescription,
      ),
      ListItem(
        title: Utils.futureBuilder.replaceAll(RegExp(r'/'), ''),
        description: Utils.futureBuilderDescription,
      ),
      ListItem(
        title: Utils.fadeTransition.replaceAll(RegExp(r'/'), ''),
        description: Utils.fadeTransitionDescription,
      ),
      ListItem(
        title: Utils.floatingActionButton.replaceAll(RegExp(r'/'), ''),
        description: Utils.floatingActionButtonDescription,
      ),
      ListItem(
        title: Utils.pageView.replaceAll(RegExp(r'/'), ''),
        description: Utils.pageViewDescription,
      ),
      ListItem(
        title: Utils.table.replaceAll(RegExp(r'/'), ''),
        description: Utils.tableDescription,
      ),
      ListItem(
        title: Utils.sliverAppBar.replaceAll(RegExp(r'/'), ''),
        description: Utils.sliverAppBarDescription,
      ),
      ListItem(
        title: Utils.sliverList.replaceAll(RegExp(r'/'), ''),
        description: Utils.sliverListDescription,
      ),
      ListItem(
        title: Utils.sliverGrid.replaceAll(RegExp(r'/'), ''),
        description: Utils.sliverGridDescription,
      ),
      ListItem(
        title: Utils.fadeInImage.replaceAll(RegExp(r'/'), ''),
        description: Utils.fadeInImageDescription,
      ),
      ListItem(
        title: Utils.streamBuilder.replaceAll(RegExp(r'/'), ''),
        description: Utils.streamBuilderDescription,
      ),
      ListItem(
        title: Utils.inheritedModel.replaceAll(RegExp(r'/'), ''),
        description: Utils.inheritedModelDescription,
      ),
      ListItem(
        title: Utils.clipRRect.replaceAll(RegExp(r'/'), ''),
        description: Utils.clipRRectDescription,
      ),
      ListItem(
        title: Utils.hero.replaceAll(RegExp(r'/'), ''),
        description: Utils.heroDescription,
      ),
      ListItem(
        title: Utils.customPaint.replaceAll(RegExp(r'/'), ''),
        description: Utils.customPaintDescription,
      ),
      ListItem(
        title: Utils.tooltip.replaceAll(RegExp(r'/'), ''),
        description: Utils.tooltipDescription,
      ),
      ListItem(
        title: Utils.fittedBox.replaceAll(RegExp(r'/'), ''),
        description: Utils.fittedBoxDescription,
      ),
      ListItem(
        title: Utils.layoutBuilder.replaceAll(RegExp(r'/'), ''),
        description: Utils.layoutBuilderDescription,
      ),
      ListItem(
        title: Utils.absorbPointer.replaceAll(RegExp(r'/'), ''),
        description: Utils.absorbPointerDescription,
      ),
      ListItem(
        title: Utils.transform.replaceAll(RegExp(r'/'), ''),
        description: Utils.transformDescription,
      ),
      ListItem(
        title: Utils.backDropFilter.replaceAll(RegExp(r'/'), ''),
        description: Utils.backDropFilterDescription,
      ),
      ListItem(
        title: Utils.align.replaceAll(RegExp(r'/'), ''),
        description: Utils.alignDescription,
      ),
      ListItem(
        title: Utils.positioned.replaceAll(RegExp(r'/'), ''),
        description: Utils.positionedDescription,
      ),
      ListItem(
        title: Utils.animatedBuilder.replaceAll(RegExp(r'/'), ''),
        description: Utils.animatedBuilderDescription,
      ),
      ListItem(
        title: Utils.dismissible.replaceAll(RegExp(r'/'), ''),
        description: Utils.dismissibleDescription,
      ),
      ListItem(
        title: Utils.sizedBox.replaceAll(RegExp(r'/'), ''),
        description: Utils.sizedBoxDescription,
      ),
      ListItem(
        title: Utils.valueListenableBuilder.replaceAll(RegExp(r'/'), ''),
        description: Utils.valueListenableBuilderDescription,
      ),
      ListItem(
        title: Utils.draggable.replaceAll(RegExp(r'/'), ''),
        description: Utils.draggableDescription,
      ),
      ListItem(
        title: Utils.animatedList.replaceAll(RegExp(r'/'), ''),
        description: Utils.animatedListDescription,
      ),
      ListItem(
        title: Utils.flexible.replaceAll(RegExp(r'/'), ''),
        description: Utils.flexibleDescription,
      ),
      ListItem(
        title: Utils.mediaQuery.replaceAll(RegExp(r'/'), ''),
        description: Utils.mediaQueryDescription,
      ),
      ListItem(
        title: Utils.spacer.replaceAll(RegExp(r'/'), ''),
        description: Utils.spacerDescription,
      ),
      ListItem(
        title: Utils.inheritedWidget.replaceAll(RegExp(r'/'), ''),
        description: Utils.inheritedWidgetDescription,
      ),
      ListItem(
        title: Utils.animatedIcon.replaceAll(RegExp(r'/'), ''),
        description: Utils.animatedIconDescription,
      ),
      ListItem(
        title: Utils.aspectRatio.replaceAll(RegExp(r'/'), ''),
        description: Utils.aspectRatioDescription,
      ),
      ListItem(
        title: Utils.limitedBox.replaceAll(RegExp(r'/'), ''),
        description: Utils.limitedBoxDescription,
      ),
      ListItem(
        title: Utils.placeholder.replaceAll(RegExp(r'/'), ''),
        description: Utils.placeholderDescription,
      ),
      ListItem(
        title: Utils.richText.replaceAll(RegExp(r'/'), ''),
        description: Utils.richTextDescription,
      ),
      ListItem(
        title: Utils.reorderableListView.replaceAll(RegExp(r'/'), ''),
        description: Utils.reorderableListViewDescription,
      ),
      ListItem(
        title: Utils.animatedSwitcher.replaceAll(RegExp(r'/'), ''),
        description: Utils.animatedSwitcherDescription,
      ),
      ListItem(
        title: Utils.animatedPositioned.replaceAll(RegExp(r'/'), ''),
        description: Utils.animatedPositionedDescription,
      ),
      ListItem(
        title: Utils.animatedPadding.replaceAll(RegExp(r'/'), ''),
        description: Utils.animatedPaddingDescription,
      ),
      ListItem(
        title: Utils.indexedStack.replaceAll(RegExp(r'/'), ''),
        description: Utils.indexedStackDescription,
      ),
      ListItem(
        title: Utils.semantics.replaceAll(RegExp(r'/'), ''),
        description: Utils.semanticsDescription,
      ),
      ListItem(
        title: Utils.constrainedBox.replaceAll(RegExp(r'/'), ''),
        description: Utils.constrainedBoxDescription,
      ),
      ListItem(
        title: Utils.stack.replaceAll(RegExp(r'/'), ''),
        description: Utils.stackDescription,
      ),
      ListItem(
        title: Utils.animatedOpacity.replaceAll(RegExp(r'/'), ''),
        description: Utils.animatedOpacityDescription,
      ),
      ListItem(
        title: Utils.fractionallySizedBox.replaceAll(RegExp(r'/'), ''),
        description: Utils.fractionallySizedBoxDescription,
      ),
      ListItem(
        title: Utils.listView.replaceAll(RegExp(r'/'), ''),
        description: Utils.listViewDescription,
      ),
      ListItem(
        title: Utils.listTile.replaceAll(RegExp(r'/'), ''),
        description: Utils.listTileDescription,
      ),
      ListItem(
        title: Utils.container.replaceAll(RegExp(r'/'), ''),
        description: Utils.containerDescription,
      ),
      ListItem(
        title: Utils.selectableText.replaceAll(RegExp(r'/'), ''),
        description: Utils.selectableTextDescription,
      ),
      ListItem(
        title: Utils.dataTable.replaceAll(RegExp(r'/'), ''),
        description: Utils.dataTableDescription,
      ),
      ListItem(
        title: Utils.slider.replaceAll(RegExp(r'/'), ''),
        description: Utils.sliderDescription,
      ),
      ListItem(
        title: Utils.alertDialog.replaceAll(RegExp(r'/'), ''),
        description: Utils.alertDialogDescription,
      ),
      ListItem(
        title: Utils.animatedCrossFade.replaceAll(RegExp(r'/'), ''),
        description: Utils.animatedCrossFadeDescription,
      ),
      ListItem(
        title: Utils.draggableScrollableSheet.replaceAll(RegExp(r'/'), ''),
        description: Utils.draggableScrollableSheetDescription,
      ),
      ListItem(
        title: Utils.colorFiltered.replaceAll(RegExp(r'/'), ''),
        description: Utils.colorFilteredDescription,
      ),
      ListItem(
        title: Utils.toggleButtons.replaceAll(RegExp(r'/'), ''),
        description: Utils.toggleButtonsDescription,
      ),
      ListItem(
        title: Utils.cupertinoActionSheet.replaceAll(RegExp(r'/'), ''),
        description: Utils.cupertinoActionSheetDescription,
      ),
      ListItem(
        title: Utils.tweenAnimationBuilder.replaceAll(RegExp(r'/'), ''),
        description: Utils.tweenAnimationBuilderDescription,
      ),
      ListItem(
        title: Utils.image.replaceAll(RegExp(r'/'), ''),
        description: Utils.imageDescription,
      ),
      ListItem(
        title: Utils.tabs.replaceAll(RegExp(r'/'), ''),
        description: Utils.tabsDescription,
      ),
      ListItem(
        title: Utils.drawer.replaceAll(RegExp(r'/'), ''),
        description: Utils.drawerDescription,
      ),
      ListItem(
        title: Utils.snackBar.replaceAll(RegExp(r'/'), ''),
        description: Utils.snackBarDescription,
      ),
      ListItem(
        title: Utils.listWheelScrollView.replaceAll(RegExp(r'/'), ''),
        description: Utils.listWheelScrollViewDescription,
      ),
      ListItem(
        title: Utils.shaderMask.replaceAll(RegExp(r'/'), ''),
        description: Utils.shaderMaskDescription,
      ),
      ListItem(
        title: Utils.notificationListener.replaceAll(RegExp(r'/'), ''),
        description: Utils.notificationListenerDescription,
      ),
      ListItem(
        title: Utils.builder.replaceAll(RegExp(r'/'), ''),
        description: Utils.builderDescription,
      ),
      ListItem(
        title: Utils.clipPath.replaceAll(RegExp(r'/'), ''),
        description: Utils.clipPathDescription,
      ),
      ListItem(
        title: Utils.circularProgressIndicator.replaceAll(RegExp(r'/'), ''),
        description: Utils.circularProgressIndicatorDescription,
      ),
      ListItem(
        title: Utils.divider.replaceAll(RegExp(r'/'), ''),
        description: Utils.dividerDescription,
      ),
      ListItem(
        title: Utils.ignorePointer.replaceAll(RegExp(r'/'), ''),
        description: Utils.ignorePointerDescription,
      ),
      ListItem(
        title: Utils.cupertinoActivityIndicator.replaceAll(RegExp(r'/'), ''),
        description: Utils.cupertinoActivityIndicatorDescription,
      ),
      ListItem(
        title: Utils.clipOval.replaceAll(RegExp(r'/'), ''),
        description: Utils.clipOvalDescription,
      ),
      ListItem(
        title: Utils.animatedWidget.replaceAll(RegExp(r'/'), ''),
        description: Utils.animatedWidgetDescription,
      ),
      ListItem(
        title: Utils.padding.replaceAll(RegExp(r'/'), ''),
        description: Utils.paddingDescription,
      ),
      ListItem(
        title: Utils.methodChannelRoute.replaceAll(RegExp(r'/'), ''),
        description: Utils.methodChannelDescription,
      ),
      ListItem(
        title: Utils.filePicker.replaceAll(RegExp(r'/'), ''),
        description: Utils.filePickerDescription,
      ),
      ListItem(
        title: Utils.rxDart.replaceAll(RegExp(r'/'), ''),
        description: Utils.rxDartDescription,
      ),
    ];
  }
}

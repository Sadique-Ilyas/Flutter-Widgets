import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_widgets/Routes/About%20Dialog.dart';
import 'package:my_flutter_widgets/Routes/AlertDialog.dart';
import 'package:my_flutter_widgets/Routes/Animated%20Icon.dart';
import 'package:my_flutter_widgets/Routes/Animated%20Opacity.dart';
import 'package:my_flutter_widgets/Routes/Animated%20Widget.dart';
import 'package:my_flutter_widgets/Routes/AnimatedList.dart';
import 'package:my_flutter_widgets/Routes/AnimatedPadding.dart';
import 'package:my_flutter_widgets/Routes/AnimatedPositioned.dart';
import 'package:my_flutter_widgets/Routes/AnimatedSwitcher.dart';
import 'package:my_flutter_widgets/Routes/Aspect%20Ratio.dart';
import 'package:my_flutter_widgets/Routes/CheckBox%20ListTile.dart';
import 'package:my_flutter_widgets/Routes/ColorFiltered.dart';
import 'package:my_flutter_widgets/Routes/Cupertino%20Action%20Sheet.dart';
import 'package:my_flutter_widgets/Routes/Cupertino%20Activity%20Indicator.dart';
import 'package:my_flutter_widgets/Routes/DraggableScrollableSheet.dart';
import 'package:my_flutter_widgets/Routes/Flexible.dart';
import 'package:my_flutter_widgets/Routes/Ignore%20Pointer.dart';
import 'package:my_flutter_widgets/Routes/Inherited%20Widget.dart';
import 'package:my_flutter_widgets/Routes/Interactive%20Viewer.dart';
import 'package:my_flutter_widgets/Routes/ListWheelScrollView.dart';
import 'package:my_flutter_widgets/Routes/Media%20Query.dart';
import 'package:my_flutter_widgets/Routes/Refresh%20Indicator.dart';
import 'package:my_flutter_widgets/Routes/Selectable%20Text.dart';
import 'package:my_flutter_widgets/Routes/Semantics.dart';
import 'package:my_flutter_widgets/Routes/Shader%20Mask.dart';
import 'package:my_flutter_widgets/Routes/Snackbar.dart';
import 'package:my_flutter_widgets/Routes/Spacer.dart';
import 'package:my_flutter_widgets/Routes/Switch%20List%20Tile.dart';
import 'package:my_flutter_widgets/Routes/Tab%20Bar.dart';
import 'package:my_flutter_widgets/Routes/Toggle%20Buttons.dart';
import 'package:my_flutter_widgets/Routes/Tween%20Animation%20Builder.dart';
import 'package:my_flutter_widgets/Routes/circular_progress_indicator.dart';
import 'package:my_flutter_widgets/Routes/data_table.dart';
import 'package:my_flutter_widgets/Routes/date_time_picker.dart';
import 'package:my_flutter_widgets/Routes/drop_down_button.dart';
import 'package:my_flutter_widgets/Routes/flat_button.dart';
import 'file:///C:/Users/Sadique/AndroidStudioProjects/my_flutter_widgets/lib/Routes/Floating%20Action%20Button/floating_action_button.dart';
import 'package:my_flutter_widgets/Routes/form.dart';
import 'package:my_flutter_widgets/Routes/icon_button.dart';
import 'package:my_flutter_widgets/Routes/image.dart';
import 'package:my_flutter_widgets/Routes/linear_progress_indicator.dart';
import 'package:my_flutter_widgets/Routes/popup_menu_button.dart';
import 'package:my_flutter_widgets/Routes/radio_button.dart';
import 'package:my_flutter_widgets/Routes/raised_button.dart';
import 'package:my_flutter_widgets/Routes/rich_text.dart';
import 'package:my_flutter_widgets/Routes/slider.dart';
import 'package:my_flutter_widgets/Routes/switch.dart';
import 'package:my_flutter_widgets/Routes/text_field.dart';
import 'package:page_transition/page_transition.dart';

import './Routes/checkbox.dart';
import 'Routes/Absorb Pointer.dart';
import 'Routes/Align.dart';
import 'Routes/AnimatedBuilder.dart';
import 'Routes/AnimatedContainer.dart';
import 'Routes/AnimatedCrossFade.dart';
import 'Routes/App Bar.dart';
import 'Routes/BackDropFilter.dart';
import 'Routes/Baseline.dart';
import 'Routes/Bottom Sheet (Modal).dart';
import 'Routes/Bottom Sheet (Persistent).dart';
import 'Routes/Button Bar.dart';
import 'Routes/Card.dart';
import 'Routes/Clip Path.dart';
import 'Routes/ClipOval.dart';
import 'Routes/ClipRRect.dart';
import 'Routes/Column & Row.dart';
import 'Routes/Constrained Box.dart';
import 'Routes/Container.dart';
import 'Routes/Custom Multi Child Layout.dart';
import 'Routes/Custom Paint.dart';
import 'Routes/Dismissible.dart';
import 'Routes/Divider.dart';
import 'Routes/Draggable.dart';
import 'Routes/Expanded.dart';
import 'Routes/Expansion Panel.dart';
import 'Routes/Fade Transition.dart';
import 'Routes/FadeInImage.dart';
import 'Routes/Fitted Box.dart';
import 'Routes/Flow.dart';
import 'Routes/Fractionally Sized Box.dart';
import 'Routes/FutureBuilder.dart';
import 'Routes/Grid View.dart';
import 'Routes/Hero/HeroHomePage.dart';
import 'Routes/Indexed Stack.dart';
import 'Routes/Inherited Model.dart';
import 'Routes/Intrinsic Height.dart';
import 'Routes/Intrinsic Width.dart';
import 'Routes/Layout Builder.dart';
import 'Routes/Limited Box.dart';
import 'Routes/List Body.dart';
import 'Routes/List Tile.dart';
import 'Routes/Navigation Drawer.dart';
import 'Routes/Notification Listener.dart';
import 'Routes/Opacity/Opacity.dart';
import 'Routes/PageViewWidget/PageView.dart';
import 'Routes/Placeholder.dart';
import 'Routes/Positioned.dart';
import 'Routes/Reorderable ListView.dart';
import 'Routes/SizedBox.dart';
import 'Routes/SliverAppBar.dart';
import 'Routes/Stack.dart';
import 'Routes/StreamBuilder.dart';
import 'Routes/Tooltip.dart';
import 'Routes/Transform.dart';
import 'Routes/Value Listenable Builder.dart';
import 'Routes/Wrap.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My Flutter Widgets",
        home: AnimatedSplashScreen(
          nextScreen: MyFlutterWidgetApp(),
          duration: 3000,
          curve: Curves.decelerate,
          splash: ConstrainedBox(
            constraints: BoxConstraints.expand(),
            child: FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              textColor: Colors.lightBlueAccent,
            ),
          ),
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.scale,
        ));
  }
}

class MyFlutterWidgetApp extends StatefulWidget {
  @override
  _MyFlutterWidgetAppState createState() => _MyFlutterWidgetAppState();
}

class _MyFlutterWidgetAppState extends State<MyFlutterWidgetApp> {
  bool isSearching = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widgets'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: ListSearch());
              })
        ],
      ),
      body: myListView(),
    );
  }
}

List<String> getListElements() {
  var items = [
    'App Bar',
    'Baseline',
    'Bottom Sheet (Modal)',
    'Bottom Sheet (Persistent)',
    'Button Bar',
    'Card',
    'Column and Row',
    'Constrained Box',
    'Container',
    'Custom Multi Child Layout [Incomplete]',
    'Divider',
    'Expanded',
    'Expansion Panel',
    'Fitted Box',
    'Flow',
    'Fractionally Sized Box',
    'Grid View',
    'Indexed Stack',
    'Stack',
    'Intrinsic Height',
    'Intrinsic Width',
    'Layout Builder',
    'Limited Box',
    'List Body',
    'List Tile',
    'Navigation Drawer',
    'Page View',
    'Wrap',
    'Animated Container',
    'Opacity',
    'Future Builder [Incomplete]',
    'Fade Transition [Incomplete]',
    'Sliver App Bar',
    'FadeIn Image',
    'Stream Builder [Incomplete]',
    'Inherited Model [Incomplete]',
    'ClipRRect',
    'Hero',
    'Custom Paint [Incomplete]',
    'ToolTip',
    'Absorb Pointer',
    'Transform',
    'BackDropFilter [Incomplete]',
    'Align',
    'Positioned',
    'Animated Builder',
    'Dismissible',
    'Sized Box',
    'Value Listenable Builder',
    'Checkbox',
    'Circular Progress Indicator',
    'Date Time Picker',
    'Data Table',
    'Drop Down Button',
    'Flat Button',
    'Floating Action Button',
    'Form',
    'Icon Button',
    'Image',
    'Linear Progress Indicator',
    'Popup Menu Button',
    'Radio Button',
    'Raised Button',
    'Refresh Indicator',
    'Rich Text',
    'Slider',
    'Switch',
    'Text Field',
    'Draggable',
    'Animated List',
    'Flexible',
    'Media Query [Incomplete]',
    'Spacer',
    'Inherited Widget [Incomplete]',
    'Animated Icon',
    'Aspect Ratio',
    'PlaceHolder',
    'Reorderable ListView',
    'Animated Switcher',
    'Animated Positioned',
    'Animated Padding',
    'Semantics [Incomplete]',
    'Animated Opacity',
    'Selectable Text',
    'Alert Dialog',
    'Animated Cross Fade',
    'Draggable Scrollable Sheet',
    'Color Filtered',
    'Toggle Buttons',
    'Cupertino Action Sheet',
    'Tween Animation Builder [Incomplete]',
    'Tab Bar',
    'SnackBar',
    'List Wheel Scroll View',
    'Shader Mask',
    'Notification Listener [Incomplete]',
    'Clip Path',
    'Ignore Pointer',
    'Cupertino Activity Indicator',
    'Clip Oval',
    'Animated Widget [Incomplete]',
    'Checkbox List Tile',
    'About Dialog',
    'Interactive Viewer',
    'Switch List Tile',
  ];
  return items;
}

var recentWidgets = [];

Widget myListView() {
  var listItems = getListElements();
  var listView = ListView.builder(
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(listItems[index]),
        onTap: () {
          nextRoute(context, listItems[index]);
          if (!recentWidgets.contains(listItems[index])) {
            recentWidgets.add(listItems[index]);
          }
          if (recentWidgets.length > 5) {
            recentWidgets.removeAt(0);
          }
        },
      );
    },
    itemCount: getListElements().length,
  );
  return listView;
}

class ListSearch extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    // Actions for app Bar
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Leading Icon
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Show results once selected
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Show Suggestions
    final suggestionsList = query.isEmpty
        ? recentWidgets
        : getListElements()
            .where((element) => element.toLowerCase().trim().startsWith(query.toLowerCase().trim()))
            .toList();
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: RichText(
            text: TextSpan(
                text: suggestionsList[index].substring(0, query.length),
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                      text: suggestionsList[index].substring(query.length),
                      style: TextStyle(color: Colors.grey))
                ]),
          ),
          onTap: () {
            nextRoute(context, suggestionsList[index]);
          },
        );
      },
      itemCount: suggestionsList.length,
    );
  }
}

void nextRoute(BuildContext context, String widget) {
  switch (widget) {
    case 'App Bar':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AppBarWidget()));
      break;
    case 'Baseline':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => BaselineWidget()));
      break;
    case 'Bottom Sheet (Modal)':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => BottomSheetModalWidget()));
      break;
    case 'Bottom Sheet (Persistent)':
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BottomSheetPersistentWidget()));
      break;
    case 'Button Bar':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ButtonBarWidget()));
      break;
    case 'Card':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => CardWidget()));
      break;
    case 'Column and Row':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ColumnRowWidget()));
      break;
    case 'Constrained Box':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ConstrainedBoxWidget()));
      break;
    case 'Container':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ContainerWidget()));
      break;
    case 'Custom Multi Child Layout [Incomplete]':
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CustomMultiChildLayoutWidget()));
      break;
    case 'Divider':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => DividerWidget()));
      break;
    case 'Expanded':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ExpandedWidget()));
      break;
    case 'Expansion Panel':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ExpansionPanelWidget()));
      break;
    case 'Fitted Box':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => FittedBoxWidget()));
      break;
    case 'Flow':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => FlowWidget()));
      break;
    case 'Fractionally Sized Box':
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FractionallySizedBoxWidget()));
      break;
    case 'Grid View':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => GridViewWidget()));
      break;
    case 'Indexed Stack':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => IndexedStackWidget()));
      break;
    case 'Stack':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => StackWidget()));
      break;
    case 'Intrinsic Height':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => IntrinsicHeightWidget()));
      break;
    case 'Intrinsic Width':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => IntrinsicWidthWidget()));
      break;
    case 'Layout Builder':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => LayoutBuilderWidget()));
      break;
    case 'Limited Box':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LimitedBoxWidget()));
      break;
    case 'List Body':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ListBodyWidget()));
      break;
    case 'List Tile':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ListTileWidget()));
      break;
    case 'Navigation Drawer':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => NavigationDrawerWidget()));
      break;
    case 'Page View':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => PageViewWidget()));
      break;
    case 'Wrap':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => WrapWidget()));
      break;
    case 'Animated Container':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => AnimatedContainerWidget()));
      break;
    case 'Opacity':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => OpacityWidget()));
      break;
    case 'Future Builder [Incomplete]':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => FutureBuilderWidget()));
      break;
    case 'Fade Transition [Incomplete]':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => FadeTransitionWidget()));
      break;
    case 'Sliver App Bar':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => SliverAppBarWidget()));
      break;
    case 'FadeIn Image':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => FadeInImageWidget()));
      break;
    case 'Stream Builder [Incomplete]':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => StreamBuilderWidget()));
      break;
    case 'Inherited Model [Incomplete]':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => InheritedModelWidget()));
      break;
    case 'ClipRRect':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ClipRRectWidget()));
      break;
    case 'Hero':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HeroHomePage()));
      break;
    case 'Custom Paint [Incomplete]':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => CustomPaintWidget()));
      break;
    case 'ToolTip':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => TooltipWidget()));
      break;
    case 'Absorb Pointer':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => AbsorbPointerWidget()));
      break;
    case 'Transform':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => TransformWidget()));
      break;
    case 'BackDropFilter [Incomplete]':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => BackDropFilterWidget()));
      break;
    case 'Align':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AlignWidget()));
      break;
    case 'Positioned':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => PositionedWidget()));
      break;
    case 'Animated Builder':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => AnimatedBuilderWidget()));
      break;
    case 'Dismissible':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => DismissibleWidget()));
      break;
    case 'Sized Box':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SizedBoxWidget()));
      break;
    case 'Value Listenable Builder':
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ValueListenableBuilderWidget()));
      break;
    case 'Checkbox':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => myCheckBox()));
      break;
    case 'Circular Progress Indicator':
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => myCircularProgressIndicator()));
      break;
    case 'Date Time Picker':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => myDateTimePicker()));
      break;
    case 'Data Table':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => myDataTable()));
      break;
    case 'Drop Down Button':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => myDropDownButton()));
      break;
    case 'Flat Button':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => myFlatButton()));
      break;
    case 'Floating Action Button':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => myFloatingActionButton()));
      break;
    case 'Form':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => myForm()));
      break;
    case 'Icon Button':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => myIconButton()));
      break;
    case 'Image':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => myImage()));
      break;
    case 'Linear Progress Indicator':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => myLinearProgressIndicator()));
      break;
    case 'Popup Menu Button':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => myPopupMenuButton()));
      break;
    case 'Radio Button':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => myRadioButton()));
      break;
    case 'Raised Button':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => myRaisedButton()));
      break;
    case 'Refresh Indicator':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => myRefreshIndicator()));
      break;
    case 'Rich Text':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => myRichText()));
      break;
    case 'Slider':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => mySlider()));
      break;
    case 'Switch':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => mySwitch()));
      break;
    case 'Text Field':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => myTextField()));
      break;
    case 'Draggable':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyDraggableWidget()));
      break;
    case 'Animated List':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyAnimatedListWidget()));
      break;
    case 'Flexible':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyFlexibleWidget()));
      break;
    case 'Media Query [Incomplete]':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyMediaQueryWidget()));
      break;
    case 'Spacer':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MySpacerWidget()));
      break;
    case 'Inherited Widget [Incomplete]':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyInheritedWidget()));
      break;
    case 'Animated Icon':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyAnimatedIcon()));
      break;
    case 'Aspect Ratio':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyAspectRatioWidget()));
      break;
    case 'PlaceHolder':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyPlaceholderWidget()));
      break;
    case 'Reorderable ListView':
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MyReorderableListViewWidget()));
      break;
    case 'Animated Switcher':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyAnimatedSwitcherWidget()));
      break;
    case 'Animated Positioned':
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MyAnimatedPositionedWidget()));
      break;
    case 'Animated Padding':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyAnimatedPaddingWidget()));
      break;
    case 'Semantics [Incomplete]':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MySemanticsWidget()));
      break;
    case 'Animated Opacity':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyAnimatedOpacityWidget()));
      break;
    case 'Selectable Text':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MySelectableTextWidget()));
      break;
    case 'Alert Dialog':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyAlertDialogWidget()));
      break;
    case 'Animated Cross Fade':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyAnimatedCrossFadeWidget()));
      break;
    case 'Draggable Scrollable Sheet':
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MyDraggableScrollableSheetWidget()));
      break;
    case 'Color Filtered':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyColorFilteredWidget()));
      break;
    case 'Toggle Buttons':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyToggleButtonsWidget()));
      break;
    case 'Cupertino Action Sheet':
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MyCupertinoActionSheetWidget()));
      break;
    case 'Tween Animation Builder [Incomplete]':
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MyTweenAnimationBuilderWidget()));
      break;
    case 'Tab Bar':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyTabBarWidget()));
      break;
    case 'SnackBar':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MySnackBarWidget()));
      break;
    case 'List Wheel Scroll View':
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MyListWheelScrollViewWidget()));
      break;
    case 'Shader Mask':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyShaderMaskWidget()));
      break;
    case 'Notification Listener [Incomplete]':
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MyNotificationListenerWidget()));
      break;
    case 'Clip Path':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyClipPathWidget()));
      break;
    case 'Ignore Pointer':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyIgnorePointerWidget()));
      break;
    case 'Cupertino Activity Indicator':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyCupertinoActivityWidget()));
      break;
    case 'Clip Oval':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyClipOvalWidget()));
      break;
    case 'Animated Widget [Incomplete]':
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyAnimatedWidget()));
      break;
    case 'Checkbox List Tile':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyCheckBoxListTileWidget()));
      break;
    case 'About Dialog':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyAboutDialogWidget()));
      break;
    case 'Interactive Viewer':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyInteractiveViewer()));
      break;
    case 'Switch List Tile':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MySwitchListTile()));
      break;
  }
}

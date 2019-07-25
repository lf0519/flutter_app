import 'widget/RowLearn.dart';
import 'widget/MyGridView.dart';
import 'widget/CounterWidget.dart';
import 'package:flutter/material.dart';
import 'widget/WidgetManageSelfState.dart';
import 'widget/TextWidget.dart';
import 'widget/ContainerWidget.dart';
import 'widget/AddAndRemoveView.dart';
import 'widget/BottomNavigationBarWidget.dart';
import 'widget/BottomAppBarWiget.dart';
import 'widget/CustomRouteWidget.dart';
import 'widget/TabBarWidget.dart';
import 'widget/SwitchAndCheckBox.dart';
import 'widget/TextFieldWidget.dart';
import 'widget/TextFormFieldWidget.dart';
import 'widget/ItemWidget.dart';
import 'widget/login_page.dart';
import 'widget/wrap_widget.dart';
import 'widget/flow_widget.dart';
import 'widget/custom_scroll_view.dart';
import 'widget/scroll_controller_widget.dart';
import 'widget/notification_listener_widget.dart';
import 'widget/share_data_widget.dart';
import 'widget/pointer_widget.dart';
class LeanItem {
  static Map<int, Widget> getItemMap() {
    Map<int, Widget> map = new Map();
    map[0] = RowLearn(title: "Row layout");
    map[1] = MyGridView(title: "GridView");
    map[2] = CounterWidget(title: "counterWidget");
    map[3] = WidgetManageSelfState();
    map[4] = TextWidget();
    map[5] = ContainerWidget();
    map[6] = AddAndRemoveView();
    map[7] = BottomNavigationBarWidget();
    map[8] = BottomAppBarWiget();
    map[9] = CustomRouteWidget();
    map[10] = TabBarWidget();
    map[11] = SwitchAndCheckBox();
    map[12] = TextFieldWidget();
    map[13] = TextFormFieldWidget();
    map[14] = ItemChatPage();
    map[15] = LoginPage();
    map[16] = WrapWidget();
    map[17] = FlowWidget();
    map[18] = CustomScrollWidget();
    map[19] = ScrollControllerWideget();
    map[20] = NotificationListenerWidget();
    map[21] = ShareDataWidget();
    map[22] = PointerWidget();
    return map;
  }

  static List<String> getTitle() {
    List<String> items = new List();
    items
      ..add("水平布局")
      ..add("网格布局")
      ..add("计数器")
      ..add("状态管理")
      ..add("Text Widget")
      ..add("Container")
      ..add("添加删除view")
      ..add("底部导航")
      ..add("不规则底部导航")
      ..add("路由动画")
      ..add("Tab  Bar")
      ..add("switch and checkbox")
      ..add("text field")
      ..add("text field form")
      ..add("list item ")
      ..add("登录界面")
      ..add("wrap widget")
      ..add("flow widget")
      ..add("custom scroll")
      ..add("scroll controller")
      ..add("scroll notification listener")
      ..add("share data")
      ..add("pointer event");
    return items;
  }
}

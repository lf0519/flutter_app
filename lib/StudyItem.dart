import 'package:flutter_app/widget/RowLearn.dart';
import 'package:flutter_app/widget/MyGridView.dart';
import 'package:flutter_app/widget/CounterWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widget/WidgetManageSelfState.dart';
import 'package:flutter_app/widget/TextWidget.dart';
import 'package:flutter_app/widget/ContainerWidget.dart';
import 'package:flutter_app/widget/AddAndRemoveView.dart';
import 'package:flutter_app/widget/BottomNavigationBarWidget.dart';
import 'package:flutter_app/widget/BottomAppBarWiget.dart';
import 'package:flutter_app/widget/CustomRouteWidget.dart';
import 'package:flutter_app/widget/TabBarWidget.dart';

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
      ..add("Tab  Bar");
    return items;
  }
}

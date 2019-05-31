import 'package:flutter_app/widget/RowLearn.dart';
import 'package:flutter_app/widget/MyGridView.dart';
import 'package:flutter_app/widget/CounterWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widget/WidgetManageSelfState.dart';
import 'package:flutter_app/widget/TextWidget.dart';
class LeanItem {

  static Map<int,Widget>getItemMap(){
     Map<int,Widget> map = new Map();
     map[0] = RowLearn(title:"Row layout");
     map[1] = MyGridView(title: "GridView");
     map[2] = CounterWidget(title: "counterWidget");
     map[3] = WidgetManageSelfState();
     map[4] = TextWidget();
     return map;
  }
  static List<String> getTitle(){
    List<String> items =new List();
    items.add("水平布局");
    items.add("网格布局");
    items.add("计数器");
    items.add("状态管理");
    items.add("Text Widget");
    return items;
  }
}
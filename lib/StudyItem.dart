import 'package:flutter_app/widget/MyStatelessWidget.dart';
import 'package:flutter_app/widget/RowLearn.dart';
import 'package:flutter_app/widget/MyGridView.dart';
class LeanItem {
  static Map<int,MyStatelessWidget> getItemMap(){
     Map<int,MyStatelessWidget> itemMap = new Map();
     itemMap[0] = RowLearn(title:"Row layout");
     itemMap[1] = MyGridView(title: "GridView");
     return itemMap;
  }
}
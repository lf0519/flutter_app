import 'package:flutter/material.dart';
import 'StudyItem.dart';
import 'package:flutter/cupertino.dart';
import 'widget/Student.dart';
import 'dart/ShoppingCart.dart';
import 'dart/Item.dart';

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ShoppingCart.withCode(name: "小明", code: "12312312")
      ..items = [Item(12.0, "苹果"), Item(6, "西红柿")]
      ..printInfo();

    ShoppingCart(name: "李四")
      ..items = [Item(9.0, "🌰"), Item(56, "车厘子")]
      ..printInfo();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter learn"),
        ),
        body: CupertinoScrollbar(
            child: ListView.builder(
          itemCount: LeanItem.getItemMap().length,
          itemBuilder: _itemBuilder,
        )),
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return ListTile(
      onTap: () {
        _onItemClick(context, index);
      },
      title: Center(
        child: Text(LeanItem.getTitle()[index]),
      ),
    );
  }

  _onItemClick(BuildContext context, int index) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return LeanItem.getItemMap()[index];
      },
      // maintainState: false,
    ));
  }
}

import 'package:flutter/material.dart';
import '../StudyItem.dart';
import 'dart:math';
class WrapWidget extends StatelessWidget {
  List<String> _listString = new List();
  List<Widget> _listWidget = new List();

  WrapWidget() {
    this._listString.addAll(LeanItem.getTitle());
    for (String ss in this._listString) {
      int A = Random().nextInt(256);
      int R = Random().nextInt(256);
      int G = Random().nextInt(256);
      int B = Random().nextInt(256);
      print("$R---$G---$B");
      this._listWidget.add(RaisedButton(
            color: Color.fromARGB(A, R, G, B),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))
            ),
            onPressed: () {
            },
            child: Text(ss),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("wrap widget"),
        ),
        body: Wrap(
          spacing: 8,
          runSpacing: 10,
         alignment: WrapAlignment.center,
          children: this._listWidget,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../StudyItem.dart';
import 'dart:math';

class FlowWidget extends StatefulWidget {
  @override
  _FlowWidgetState createState() => _FlowWidgetState();
}

class _FlowWidgetState extends State<FlowWidget> {
  List<Widget> _myWidget = List();
  List<String> _myString = List();
  @override
  void initState() {
    super.initState();
    this._myString = LeanItem.getTitle();
    for (String ss in this._myString) {

      int A = Random().nextInt(256);
      int R = Random().nextInt(256);
      int G = Random().nextInt(256);
      int B = Random().nextInt(256);
      print("$R---$G---$B");
      this._myWidget.add(RaisedButton(
        color: Color.fromARGB(A, R, G, B),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))
        ),
        onPressed: () {
          print("--------------1111");
        },
        child: Text(ss),
      ));
    }

    this._myWidget.add(FloatingActionButton(
        onPressed: (){
          print("-----------pressed");
          setState(() {
            print("-----------pressed");
            this._myString.add("add sdfadsfsa");
          });

        },
        child: Icon(Icons.add),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("flow widget"),
        ),
        body: Flow(
          delegate: _FlowDelegate(margin: EdgeInsets.symmetric(horizontal: 20)),
          children: this._myWidget,
        ),
      ),
    );
  }
}

class _FlowDelegate extends FlowDelegate {
  EdgeInsets margin = EdgeInsets.zero;

  _FlowDelegate({this.margin});

  @override
  void paintChildren(FlowPaintingContext context) {
    var x = margin.left;
    var y = margin.top;
    //计算每一个子widget的位置
    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i).width + x + margin.right;
      if (w < context.size.width) {
        context.paintChild(i,
            transform: new Matrix4.translationValues(x, y, 0.0));
        x = w + margin.left;
      } else {
        x = margin.left;
        y += context.getChildSize(i).height + margin.top + margin.bottom;
        //绘制子widget(有优化)
        context.paintChild(i,
            transform: new Matrix4.translationValues(x, y, 0.0));
        x += context.getChildSize(i).width + margin.left + margin.right;
      }
    }
  }

  @override
  getSize(BoxConstraints constraints) {
    //指定Flow的大小
    return Size(double.infinity, double.infinity);
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }
}

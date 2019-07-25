import 'package:flutter/material.dart';

class ShareDataWidget extends StatefulWidget {
  @override
  _ShareDataWidgetState createState() => _ShareDataWidgetState();
}

class _ShareDataWidgetState extends State<ShareDataWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("share data widget"),
        ),
        body: Center(
          child: _ShareDataWidget(
            //使用ShareDataWidget
            data: count,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: _TestWidget(), //子widget中依赖ShareDataWidget
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              this.count++;
            });
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class _TestWidget extends StatefulWidget {
  @override
  __TestWidgetState createState() => new __TestWidgetState();
}

class __TestWidgetState extends State<_TestWidget> {
  @override
  Widget build(BuildContext context) {
    //使用InheritedWidget中的共享数据
    return Text("fafadfasdfasdfas");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //父或祖先widget中的InheritedWidget改变(updateShouldNotify返回true)时会被调用。
    //如果build中没有依赖InheritedWidget，则此回调不会被调用。
    print("-----Dependencies change");
  }
}

class _ShareDataWidget extends InheritedWidget {
  final int data;

  _ShareDataWidget({@required this.data, Widget child}) : super(child: child);

  static _ShareDataWidget of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(_ShareDataWidget);
  }

  @override
  bool updateShouldNotify(_ShareDataWidget oldWidget) {
    return oldWidget.data != data;
  }
}

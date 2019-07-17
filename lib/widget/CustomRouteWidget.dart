import 'package:flutter/material.dart';
import 'package:flutter_app/CustomRoute.dart';

class CustomRouteWidget extends StatelessWidget {
  int _index = 0;
  BuildContext _myContext;

  @override
  Widget build(BuildContext context) {
    _myContext = context;
    return Scaffold(
      appBar: AppBar(
        title: Text("custom route "),
      ),
      body: Center(
          child: Container(
        height: 400,
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                this._index = 1;
                _startPages();
              },
              child: Text("淡入淡出"),
              color: Colors.blue,
            ),
            RaisedButton(
              onPressed: () {
                this._index = 2;
                _startPages();
              },
              child: Text("缩放进出"),
              color: Colors.red,
            ),
            RaisedButton(
              onPressed: () {
                this._index = 3;
                _startPages();
              },
              child: Text("旋转进入"),
              color: Colors.cyanAccent,
            ),
            RaisedButton(
              onPressed: () {
                this._index = 4;
                _startPages();
              },
              child: Text("左右进入"),
              color: Colors.green,
            ),
          ],
        ),
      )),
    );
  }

  void _startPages() {
    Navigator.push(_myContext, CustomRoute(NextPages(), _index));
  }
}

class NextPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text("next pages"),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            child: Text("add pages"),
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Colors.purpleAccent),
          ),
        ),
      ),
    );
  }
}

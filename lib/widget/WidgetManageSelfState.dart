import 'package:flutter/material.dart';

class WidgetManageSelfState extends  StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _MyState();
  }

}

class _MyState extends State<WidgetManageSelfState>{
   bool _active = false;
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: new Text(
            _active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          color: _active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
  }


  void _handleTap() {
    setState(() {
        _active =! _active;
    });
  }
}
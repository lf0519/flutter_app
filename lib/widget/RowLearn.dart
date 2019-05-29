import 'package:flutter/material.dart';
import 'MyStatelessWidget.dart';
class RowLearn extends MyStatelessWidget{
  final String title;
  RowLearn({Key key,@required this.title}):super(key:key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text(this.title),
     ),
   );
  }

  @override
  String getTitle() {
    return this.title;
  }

}
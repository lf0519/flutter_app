import 'package:flutter/material.dart';
import 'StudyItem.dart';
class MyList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.redAccent
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter learn"),
        ),
        body: ListView.builder(
           itemCount: LeanItem.getItemMap().length,
           itemBuilder: _itemBuilder,
        ),
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
       return ListTile(
         onTap:() {
           _onItemClick(context, index);
         },
         title: Center(
           child: Text(LeanItem.getItemMap()[index].getTitle()),
         ),
       );
  }
  _onItemClick(BuildContext context, int index) {

     Navigator.of(context).push(
       MaterialPageRoute(
         builder: (context){
           return LeanItem.getItemMap()[index];
         }
       )
     );
  }
}
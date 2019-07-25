import 'package:flutter/material.dart';
import 'StudyItem.dart';
import 'package:flutter/cupertino.dart';
class MyList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter learn"),
        ),
        body: CupertinoScrollbar(child: ListView.builder(
          itemCount: LeanItem.getItemMap().length,
          itemBuilder: _itemBuilder,
        )),
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
       return ListTile(
         onTap:() {
           _onItemClick(context, index);
         },
         title: Center(
           child: Text(LeanItem.getTitle()[index]),
         ),
       );
  }
  _onItemClick(BuildContext context, int index) {

     Navigator.of(context).push(
       MaterialPageRoute(
         builder: (context){
           return LeanItem.getItemMap()[index];
         },
        // maintainState: false,
       )
     );
  }
}
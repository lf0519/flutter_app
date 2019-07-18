import 'package:flutter/material.dart';


class AddAndRemoveView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyState();
  }

}
class _MyState extends State<AddAndRemoveView>{
  bool isShow = true;
  bool addView = false;
  @override
  Widget build(BuildContext context) {
      return  Scaffold(
        appBar: AppBar(
          title: new Text("add or remove view"),
        ),
        body: Center(
          child: _getChild(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _change,
          tooltip: 'Update Text',
          child: new Icon(Icons.update),
        ),
      );
  }

  Widget _getChild() {
    if (isShow) {
      return new Text('Toggle One');
    } else {
      if(addView){
        return new MaterialButton(
            child: Container(
              child: Text("add view"),
              width: 100,
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                    width: 1,
                  )
              ),
            ));
        }


      return new MaterialButton(
          onPressed: _addView,
          child: new Text('Toggle Two'));
    }
  }

  void _change() {
     setState(()=>this.isShow = !this.isShow);
  }


  void _addView() {
      setState(() {
        this.addView = !this.addView;
      });
  }
}
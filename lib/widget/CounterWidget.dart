import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget{

  CounterWidget({Key key,@required this.title}):super(key :key);
  final String title;

  @override
  State<StatefulWidget> createState() {

    return  _myState() ;
  }
}
class _myState extends State<CounterWidget>{
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
           child:  Icon(Icons.add),
          ),
    );
  }


  void _incrementCounter() {
    setState(() {
       this._counter++;
    });
  }
}
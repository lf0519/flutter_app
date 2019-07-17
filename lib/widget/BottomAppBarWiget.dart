import 'package:flutter/material.dart';
import 'package:flutter_app/CustomRoute.dart';

class BottomAppBarWiget extends StatefulWidget {
  @override
  _BottomAppBarWigetState createState() => _BottomAppBarWigetState();
}

class _BottomAppBarWigetState extends State<BottomAppBarWiget> {
  final List<Widget> pages = new List();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    this.pages..add(HomePages())..add(Mypages());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentPage],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, CustomRoute(AddPages(), 3));
        },
        tooltip: "我在这",
        child: Icon(
          Icons.add,
          color: Colors.red,
        ),
        backgroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        title: Text("bottom app bar"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
              ),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  this._currentPage = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  this._currentPage = 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Mypages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        child: Text("my  pages"),
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.red),
      ),
    );
  }
}

class HomePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        child: Text("home pages"),
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.purpleAccent),
      ),
    );
  }
}
class AddPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
       home: Scaffold(
         appBar: AppBar(
           leading: IconButton(
             icon :Icon(
                 Icons.arrow_back,
               ),
             onPressed: (){
               Navigator.pop(context);
             },
           ),
           title: Text("add pages"),
         ),
         body:  Center(
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

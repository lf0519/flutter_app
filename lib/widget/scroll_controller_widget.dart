import 'package:flutter/material.dart';

class ScrollControllerWideget extends StatefulWidget {
  @override
  _ScrollControllerWidegetState createState() =>
      _ScrollControllerWidegetState();
}

class _ScrollControllerWidegetState extends State<ScrollControllerWideget> {
  ScrollController _controller = new ScrollController();
  bool showToTopBtn = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      print("-------${_controller.offset}");
      if (_controller.offset < 1000) {
        setState(() {
          showToTopBtn = false;
        });
      } else if (_controller.offset >= 1000) {
        setState(() {
          showToTopBtn = true;
        });
      }
    });
  }

  @override
  void dispose() {
    this._controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("scroll controller"),
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          controller: this._controller,
          itemBuilder: (ctx, index) {
            return Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text("我是第$index条目"),
            );
          },
          itemCount: 100,
        ),
        floatingActionButton: showToTopBtn
            ? FloatingActionButton(
                onPressed: () {
                  this._controller.animateTo(0, duration: Duration(seconds: 1), curve: Curves.ease);
                },
                child: Icon(Icons.arrow_upward),
              )
            : null,
      ),
    );
  }
}

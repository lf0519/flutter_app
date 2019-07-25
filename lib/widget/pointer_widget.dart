import 'package:flutter/material.dart';

class PointerWidget extends StatefulWidget {
  @override
  _PointerWidgetState createState() => _PointerWidgetState();
}

class _PointerWidgetState extends State<PointerWidget> {
  PointerEvent _event;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text("pointer widget"),
          ),
          body: Listener(
            child: Center(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Text(this._event?.toString()??""),
              ),
            ),
            onPointerCancel: (event) {
              setState(() {
                this._event = event;
              });
            },
            onPointerDown: (event) {
              setState(() {
                this._event = event;
              });
            },
            onPointerMove: (event) {
              setState(() {
                this._event = event;
              });
            },
            onPointerEnter: (event) {
              setState(() {
                this._event = event;
              });
            },
            onPointerExit: (event) {
              setState(() {
                this._event = event;
              });
            },
            onPointerHover: (event) {
              setState(() {
                this._event = event;
              });
            },
            onPointerSignal: (event) {
              setState(() {
                this._event = event;
              });
            },
            onPointerUp: (event) {
              setState(() {
                this._event = event;
              });
            },
          )),
    );
  }
}

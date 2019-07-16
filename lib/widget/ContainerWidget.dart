import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("container lean"),
      ),
      body: Center(
        child: Container(
          width: double.maxFinite,
          height: 200.0,
          child: Text(
            "tomorrow will be better",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          alignment: Alignment.center,
          margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
//            transform: Matrix4.rotationZ(0.1),
          decoration: BoxDecoration(
              color: Colors.black12,
              border: Border.all(width: 2, color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
    );
  }
}

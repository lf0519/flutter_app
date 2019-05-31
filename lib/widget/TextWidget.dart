import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("text  widget"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: <Widget>[
          Text(
            "Hello world",
            textAlign: TextAlign.center,
          ),
          Text(
            "Hello world " * 6,
            textAlign: TextAlign.center,
          ),
          Text(
            "Hello world",
            textScaleFactor: 2.0,
            style: TextStyle(
              color: Colors.redAccent,
              fontSize: 18.0,
              background: Paint()..color = Colors.black,
              decoration:TextDecoration.underline,
              decorationColor: Colors.white,
              decorationStyle: TextDecorationStyle.dashed
            ),
          ),
          Text.rich(
            TextSpan(
              children:[
                TextSpan(
                  text: "hello james",
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 18.0,
                      background: Paint()..color = Colors.black,
                      decoration:TextDecoration.underline,
                      decorationColor: Colors.white,
                      decorationStyle: TextDecorationStyle.dashed
                  )
                ),
                TextSpan(
                    text: "https://flutterchina.club",
                    style: TextStyle(
                        color: Colors.blue
                    ),
                ),
              ] ,

            )
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SwitchAndCheckBox extends StatefulWidget {
  @override
  _SwitchAndCheckBoxState createState() => _SwitchAndCheckBoxState();
}

class _SwitchAndCheckBoxState extends State<SwitchAndCheckBox> {
  bool _switchSelected = true;
  bool _checkboxSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("switch and chekbox"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Switch(
                activeColor: Colors.red,
                value: this._switchSelected,
                onChanged: (select) {
                  setState(() {
                    this._switchSelected = select;
                  });
                }),
            Checkbox(
                value: this._checkboxSelected,
                onChanged: (change) {
                  setState(() {
                    this._checkboxSelected = change;
                  });
                })
          ],
        ),
      ),
    );
  }
}

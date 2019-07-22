import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatefulWidget {
  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("text filed"),
      ),
      body: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
            child: Column(
              children: <Widget>[
                TextField(
                  maxLength: 11,
                  keyboardType: TextInputType.phone,
//                  inputFormatters: [
//                    WhitelistingTextInputFormatter(RegExp("^1\d{8}\$")),
//                  ],
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(17),
                    labelText: "手机号",
                    hintText: "请输入手机号",
                    hintStyle: TextStyle(color: Colors.black26),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                  onTap: () {
                    print('手机号---ontap');
                  },
                  onChanged: (text) {
                    print('手机号------change $text');
                  },
                  onSubmitted: (text) {
                    print('手机号---submit $text');
                  },
                  onEditingComplete: () {
                    print('手机号---onEditingComplete');
                  },
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(17),
                      labelText: "用户密码",
                      hintText: "请输入密码",
                      hintStyle: TextStyle(color: Colors.black26),
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.red))),
                  obscureText: true,
                  onTap: () {
                    print('手机号--密码-ontap');
                  },
                  onChanged: (text) {
                    print('手机号---密码---change $text');
                  },
                  onSubmitted: (text) {
                    print('手机号--密码-submit $text');
                  },
                  onEditingComplete: () {
                    print('手机号--密码-onEditingComplete');
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        onPressed: () {},
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        color: Colors.blueAccent,
                        textColor: Colors.white,
                        child: Text(
                          "登录",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );;
  }
}



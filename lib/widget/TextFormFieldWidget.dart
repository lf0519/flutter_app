import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  @override
  _TextFormFieldWidgetState createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  GlobalKey _globalKey = GlobalKey<FormState>();
  TextEditingController _phoneController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("text form field"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Form(
          key: this._globalKey,
          autovalidate: true,
          child: Column(
            children: <Widget>[
              TextFormField(
                maxLength: 11,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(17),
                  labelText: "手机号",
                  hintText: "请输入手机号",
                  hintStyle: TextStyle(color: Colors.black26),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (text) {
                  return text.trim().length == 11 ? null : "请输入完整的手机号";
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(17),
                    labelText: "用户密码",
                    hintText: "请输入密码",
                    hintStyle: TextStyle(color: Colors.black26),
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.red))),
                obscureText: true,
                validator: (text) {
                  return text.trim().length > 6 ? null : "密码位数大于6";
                },
              ),
              Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          onPressed: () {
                            if ((this._globalKey.currentState as FormState)
                                .validate()) {
                              //
                            }
                          },
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
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

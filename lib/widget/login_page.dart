import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _login(),
    );
  }
}

class _login extends StatefulWidget {
  @override
  __loginState createState() => __loginState();
}

class __loginState extends State<_login> {
  @override
  Widget build(BuildContext context) {
    var loginLogo = Image.asset(
      "resource/images/loginlogo.png",
      width: 70,
      height: 70,
    );
    var text_field = Container(
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
      child: Column(
        children: <Widget>[
          Text(
            "智慧调抢",
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          SizedBox(
            height: 15,
          ),
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
          ),
          SizedBox(
            height: 30,
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
    );

    var bg_input = DecoratedBox(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: Colors.black12),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: text_field,
    );

    var input = SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            loginLogo,
            SizedBox(
              height: 40,
            ),
            bg_input
          ],
        ),
      ),
    );

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("resource/images/login_bg.png"),
            fit: BoxFit.cover),
      ),
      child: Stack(
        alignment: Alignment(0, -.3),
        children: <Widget>[input],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("text filed"),
      ),
      body: Center(
        child:Container(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child:  Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    labelText: "用户名",
                    hintText: "用户邮箱或者手机号",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.red
                        )),
                    prefixIcon: Icon(Icons.person)
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  labelText: "用户密码",
                  hintText: "请输入密码",
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.red
                    )
                  )
                ),
                obscureText: true,
              ),
            ],
          ),
        )
      ),
    );
  }
}

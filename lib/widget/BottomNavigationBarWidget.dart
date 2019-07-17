import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  @override
  _BottomNavigationBarState createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBarWidget> {
  final _BottomNavigationColor = Colors.red;
  int _currentIndex = 0;
  final List<Widget> _listPages = new List();

  @override
  void initState() {
    this._listPages
      ..add(HomePages())
      ..add(OrderPages())
      ..add(SettingPages())
      ..add(Mypages());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavigationBar"),
      ),
      body: this._listPages[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() => this._currentIndex = index);
          },
          currentIndex: this._currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                title: Text(
                  "首页",
                  style: TextStyle(color: this._BottomNavigationColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.airplay,
                  color: this._BottomNavigationColor,
                ),
                title: Text(
                  "订单",
                  style: TextStyle(color: this._BottomNavigationColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: this._BottomNavigationColor,
                ),
                title: Text(
                  "设置",
                  style: TextStyle(color: this._BottomNavigationColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.my_location,
                  color: this._BottomNavigationColor,
                ),
                title: Text(
                  "我的",
                  style: TextStyle(color: this._BottomNavigationColor),
                ))
          ]),
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
        child: Text("home  pages"),
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.red),
      ),
    );
  }
}

class OrderPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        child: Text("order  pages"),
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.blue),
      ),
    );
  }
}

class SettingPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        child: Text("setting  pages"),
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.yellow),
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
        decoration: BoxDecoration(color: Colors.purpleAccent),
      ),
    );
  }
}

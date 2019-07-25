import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:english_words/english_words.dart';

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
    String str = "我们好像在哪见过，你记得吗好地方撒发多少积分哈是的发生";
    var scrollWidget = CupertinoScrollbar(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: str
                .split("")
                .map((c) => Text(
                      c,
                      textScaleFactor: 2.0,
                    ))
                .toList(),
          ),
        ),
      ),
    );
    return Container(
      child: scrollWidget,
    );
  }
}

class OrderPages extends StatefulWidget {
  @override
  _OrderPagesState createState() => _OrderPagesState();
}

class _OrderPagesState extends State<OrderPages> {

  static const String loadingTag = "####loading_tag###";
  List<String> _myListString = List();

  @override
  void initState() {
    super.initState();
    for (int a = 0; a < 30; a++) {
       _myListString.add(WordPair.random().asPascalCase);
    }
    this._myListString.add(loadingTag);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text("列表")
          ),
          Expanded(
            child: CupertinoScrollbar(child: ListView.builder(
              itemBuilder: (ctx, index) {
                if(this._myListString[index] == loadingTag){
                  if(this._myListString.length < 100){
                    _retrieveData();
                    return Container(
                      padding: const EdgeInsets.all(16.0),
                      alignment: Alignment.center,
                      child: SizedBox(
                          width: 24.0,
                          height: 24.0,
                          child: CircularProgressIndicator(strokeWidth: 2.0)
                      ),
                    );
                  }else{

                    return Container(
                      padding: EdgeInsets.all(16),
                      alignment: Alignment.center,
                      child: Text("没有更多数据"),
                    );
                  }
                }
                return Container(
                  height: 50,
                  alignment:Alignment.center,
                  child: Text(this._myListString[index]),
                );
              },
              itemCount: this._myListString.length,
            )),
          ),
        ],
      )
    );
  }

  void _retrieveData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      this._myListString.insertAll(this._myListString.length - 1,
          generateWordPairs().take(20).map((e) => e.asPascalCase).toList()
      );
      setState(() {
        //重新构建列表
      });
    });
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

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart' show DragStartBehavior;
class TabBarWidget extends StatefulWidget {
  @override
  _TabBarWidgetState createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<Widget> _tabs = List();
  List<Widget> _tabsContent = List();

  @override
  void initState() {
    super.initState();
    _tabs
      ..add(Tab(icon: Icon(Icons.directions_car)))
      ..add(Tab(icon: Icon(Icons.directions_transit)))
      ..add(Tab(icon: Icon(Icons.directions_bike)))
      ..add(Tab(icon: Icon(Icons.directions_run)));
    _tabsContent
      ..add(Text("11111"))
      ..add(Text("2222"))
      ..add(Text("3333"))
      ..add(Text("4444"));
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("tab bar widget"),
          bottom: TabBar(
//            labelPadding: EdgeInsets.fromLTRB(50, 0, 50, 0),
//            isScrollable: _tabs.length >3,
            dragStartBehavior: DragStartBehavior.down,
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            controller: _tabController,
            tabs: _tabs,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: _tabsContent,
        ));
  }
}

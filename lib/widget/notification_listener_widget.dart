import 'package:flutter/material.dart';
class NotificationListenerWidget extends StatefulWidget {
  @override
  _NotificationListenerWState createState() => _NotificationListenerWState();
}

class _NotificationListenerWState extends State<NotificationListenerWidget> {
  String _progress = "0%";
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text("notification listener"),
         ),
         body: Scrollbar(
             child: NotificationListener<ScrollNotification>(
               onNotification: (ScrollNotification notification){
                 double progress = notification.metrics.pixels /
                     notification.metrics.maxScrollExtent;
                 setState(() {
                   _progress = "${(progress * 100).toInt()}%";
                 });
//                 return true; //放开此行注释后，进度条将失效
                 print("${notification.metrics.extentBefore}-----${notification.metrics.extentAfter}---${notification.metrics.maxScrollExtent}");
               },
                 child: Stack(
                   alignment: Alignment.center,
                   children: <Widget>[
                     ListView.builder(
                         itemBuilder: (BuildContext ctx,int index){
                           return Container(
                             padding: EdgeInsets.symmetric(vertical: 8),
                             alignment: Alignment.center,
                             child: Text("蒲地蓝$index"),
                           );
                         },
                       itemCount: 70,
                     ),
                     CircleAvatar(
                       radius: 30.0,
                       child: Text(_progress),
                       backgroundColor: Colors.black54,
                     )
                   ],
                 )
             )
         ),
       ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomRoute extends PageRouteBuilder {
  final Widget widget;
  final int index;

  CustomRoute(this.widget, this.index)
      : super(
            transitionDuration: Duration(milliseconds: 600),
            pageBuilder: (BuildContext context, Animation<double> animation1,
                Animation<double> animation2) {
              return widget;
            },
            transitionsBuilder: (BuildContext context,
                Animation<double> animation1,
                Animation<double> animation2,
                Widget child) {
              if (index == 1) {
                return FadeTransition(
                  opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                      parent: animation1, curve: Curves.fastOutSlowIn)),
                  child: child,
                );
              } else if (index == 2) {
                return ScaleTransition(
                    scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                        parent: animation1, curve: Curves.fastOutSlowIn)),
                    child: child);
              } else if (index == 3) {
                return RotationTransition(
                    turns: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                        parent: animation1, curve: Curves.fastOutSlowIn)),
                    child: ScaleTransition(
                      scale: Tween(begin: 0.0, end: 1.0).animate(
                          CurvedAnimation(
                              parent: animation1, curve: Curves.fastOutSlowIn)),
                      child: child,
                    ));
              } else if (index == 4) {
                return SlideTransition(
                  position: Tween<Offset>(
                          begin: Offset(-1.0, 0.0), end: Offset(0.0, 0.0))
                      .animate(CurvedAnimation(
                          parent: animation1, curve: Curves.fastOutSlowIn)),
                  child: child,
                );
              } else {
                return FadeTransition(
                  opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                      parent: animation1, curve: Curves.fastOutSlowIn)),
                  child: child,
                );
              }
            });
}

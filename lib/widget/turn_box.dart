import 'package:flutter/material.dart';

class TurnBox extends StatefulWidget {
  final double turns;
  final int speed;
  final Widget child;

  const TurnBox({Key key, this.turns, this.speed, this.child})
      : super(key: key);

  @override
  _TurnBoxState createState() => _TurnBoxState();
}

class _TurnBoxState extends State<TurnBox> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      vsync: this,
      lowerBound: -double.infinity,
      upperBound: -double.infinity,
    );
    _controller.value = widget.turns;
  }

  @override
  Widget build(BuildContext context) {
    print("---build---");
    return RotationTransition(
      turns: _controller,
      child: widget.child,
    );
  }

  @override
  void dispose() {
    print("---dispose---");
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(TurnBox oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("---didUpdateWidget---${oldWidget.turns}");
    if (oldWidget.turns != widget.turns) {
      _controller.animateTo(widget.turns,
          duration: Duration(milliseconds: widget.speed ?? 200),
          curve: Curves.linear);
    }
  }
}

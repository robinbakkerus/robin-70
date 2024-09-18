import 'dart:async';

import 'package:flutter/material.dart';
import 'package:robin_70/app.dart';
import 'package:robin_70/widget/animated_shape.dart';
import 'package:robin_70/widget/widget_helper.dart';

class HoverButton extends StatefulWidget {
  final double top;
  final double left;
  final String toolTip;
  final String image;
  final Widget targetWidget;
  final Icon icon;
  final Color color;

  const HoverButton(
      {required Key key,
      required this.top,
      required this.left,
      required this.image,
      required this.targetWidget,
      required this.icon,
      required this.toolTip,
      required this.color})
      : super(key: key);

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  @override
  Widget build(BuildContext context) {
    _startTimer();

    return Stack(
      children: [
        _animatedShape(),
        _button(),
      ],
    );
  }

  Positioned _button() {
    return Positioned(
        top: widget.top,
        left: widget.left,
        child: SizedBox(
          width: WH.buttonWidth(),
          height: WH.buttonWidth(),
          child: IconButton(
            iconSize: WH.buttonWidth() * 0.8,
            icon: widget.icon,
            style: ElevatedButton.styleFrom(
                iconColor: widget.color,
                side: BorderSide(color: widget.color, width: 10),
                shape: const StadiumBorder(),
                padding: const EdgeInsets.all(4)),
            onPressed: _onButtonClicked,
          ),
        ));
  }

  void _onButtonClicked() {
    BuildContext c = App.materialKey.currentContext!;
    Navigator.push(
      c,
      MaterialPageRoute(builder: (context) => widget.targetWidget),
    );
  }

  Positioned _animatedShape() {
    return Positioned(
        top: widget.top,
        left: widget.left,
        child: SizedBox(
            width: WH.buttonWidth(),
            height: WH.buttonWidth(),
            child: AnimatedShape(color: widget.color)));
  }

  //------------------------
  void _startTimer() {
    Duration duration = const Duration(seconds: 2);
    Timer(duration, onEnd);
  }

  void onEnd() {
    setState(() {
      _startTimer();
    });
  }
}

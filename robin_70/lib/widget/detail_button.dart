import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:robin_70/app.dart';
import 'package:robin_70/widget/widget_helper.dart';

class HoverButton extends StatefulWidget {
  final double top;
  final double left;
  final String toolTip;
  final String image;
  final Widget targetWidget;
  final Icon icon;

  const HoverButton(
      {required Key key,
      required this.top,
      required this.left,
      required this.image,
      required this.targetWidget,
      required this.icon,
      required this.toolTip})
      : super(key: key);

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  Color _borderColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    _startTimer();

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
                iconColor: _borderColor,
                side: BorderSide(color: _borderColor, width: 10),
                shape: const StadiumBorder(),
                padding: const EdgeInsets.all(4)),
            onPressed: _onButtonClicked,
            // child: Image.asset(widget.image),
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

  //---------------------------------
  Color _getBorderColor() {
    int x = Random().nextInt(3);
    if (x == 0) {
      return Colors.red;
    } else if (x == 1) {
      return Colors.green;
    } else {
      return Colors.blue;
    }
  }

  //------------------------
  void _startTimer() {
    Duration duration = const Duration(seconds: 2);
    Timer(duration, onEnd);
  }

  void onEnd() {
    setState(() {
      _borderColor = _getBorderColor();
      _startTimer();
    });
  }
}

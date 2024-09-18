import 'package:flutter/material.dart';
import 'package:robin_70/app.dart';

class WH {
  static Widget backButton(Color color) {
    return Positioned(
        bottom: 10, //App.screenHeight * 0.2,
        left: App.screenWidth * 0.4,
        child: SizedBox(
            width: buttonWidth() * 0.5,
            height: buttonWidth() * 0.5,
            child: IconButton(
              iconSize: buttonWidth() * 0.4,
              onPressed: _onBackButonClicked,
              icon: const Icon(Icons.undo_outlined),
              style: ElevatedButton.styleFrom(
                  side: BorderSide(color: color, width: 10),
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.all(4)),
            )
            // child: Image.asset("assets/return.jpg")),
            ));
  }

  static double buttonWidth() {
    if (App.screenWidth > 700) {
      return 200.0;
    } else {
      return App.screenWidth * 0.35;
    }
  }

  static void _onBackButonClicked() {
    BuildContext c = App.materialKey.currentContext!;
    Navigator.pop(c);
  }
}

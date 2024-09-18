import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:robin_70/app.dart';
import 'package:robin_70/widget/widget_helper.dart';

class DetailPage extends StatefulWidget {
  final String htmlText;
  final Color color;

  const DetailPage({super.key, required this.htmlText, required this.color});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

//-----------------------------------------------

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: DefaultTextStyle(
          style: const TextStyle(color: Colors.black),
          child: SizedBox(
            width: App.screenWidth,
            height: App.screenHeight,
            child: _body(context),
          ),
        ),
      ),
    );
  }

  Widget _body(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16.0),
      child: Stack(alignment: Alignment.topCenter, children: [
        _background(context),
        _goBackButton(context),
      ]),
    );
  }

  Widget _background(BuildContext context) {
    HtmlWidget htmlWidget = HtmlWidget(
      widget.htmlText,
      customStylesBuilder: (element) {
        return null;
      },
    );
    return htmlWidget;
  }

  Widget _goBackButton(BuildContext context) {
    return WH.backButton(widget.color);
  }
}

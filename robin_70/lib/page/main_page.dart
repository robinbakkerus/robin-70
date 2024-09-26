import 'package:flutter/material.dart';
import 'package:robin_70/app.dart';
import 'package:robin_70/data/html_content.dart';
import 'package:robin_70/widget/detail_page.dart';
import 'package:robin_70/widget/detail_button.dart';
import 'package:text_scroll/text_scroll.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

//----------------------------------------------------------
class _MainPageState extends State<MainPage> {
  final HtmlContent htmlContent = HtmlContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      _background(context),
      _info(context),
      _parkeren(context),
      _kado(context),
      _banner(),
    ]);
  }

  Widget _background(BuildContext context) {
    return SizedBox(
        width: App.screenWidth,
        height: App.screenHeight,
        child: const Image(
            opacity: AlwaysStoppedAnimation(.3),
            image: AssetImage("assets/poster.jpg"),
            fit: BoxFit.scaleDown));
  }

  //----------------------------------------------
  Widget _info(BuildContext context) {
    return HoverButton(
        key: UniqueKey(),
        top: App.screenHeight * 0.02,
        left: App.screenWidth * 0.35,
        image: "assets/info.png",
        targetWidget:
            DetailPage(htmlText: htmlContent.info(), color: Colors.red),
        icon: const Icon(Icons.info_outline),
        color: Colors.red,
        toolTip: 'Info algemeen');
  }

//----------------------------------------------

  Widget _kado(BuildContext context) {
    return HoverButton(
        key: UniqueKey(),
        top: App.screenHeight * 0.35,
        left: App.screenWidth * 0.35,
        image: "assets/kado-tip.jpg",
        targetWidget:
            DetailPage(htmlText: htmlContent.gift(), color: Colors.green),
        icon: const Icon(Icons.card_giftcard),
        color: Colors.green,
        toolTip: 'Kado tip ');
  }
  //----------------------------------------------

  Widget _parkeren(BuildContext context) {
    return HoverButton(
        key: UniqueKey(),
        top: App.screenHeight * 0.65,
        left: App.screenWidth * 0.35,
        image: "assets/parkeren.jpg",
        targetWidget: DetailPage(
          htmlText: htmlContent.parking(),
          color: Colors.blue,
        ),
        icon: const Icon(Icons.local_parking),
        color: Colors.blue,
        toolTip: 'Parkeren');
  }

  Widget _banner() {
    return Positioned(
      bottom: 0,
      left: App.screenWidth * 0.1,
      child: Container(
        color: const Color.fromARGB(255, 236, 232, 193),
        width: App.screenWidth * 0.9,
        // height: 200,
        child: TextScroll(
            style: const TextStyle(fontSize: 32),
            _bannerText,
            textDirection: TextDirection.ltr,
            velocity: const Velocity(
              pixelsPerSecond: Offset(150, 0),
            )),
      ),
    );
  }

  final String _bannerText =
      'Zaterdag 9 november, vanaf 16.00 uur is het Party time! met een Pasta party en Silent disco marathon in de RGB discobar. Klik op de buttons voor meer info ... ';
  // //----------------------------------------------

  // Widget _hotel(BuildContext context) {
  //   return HoverButton(
  //       key: UniqueKey(),
  //       top: App.screenHeight * 0.6,
  //       left: App.screenWidth * 0.6,
  //       image: "assets/hotel.png",
  //       targetWidget: DetailPage(htmlText: App.htmlHotel),
  //       icon: const Icon(Icons.hotel),
  //       toolTip: 'Hotel ');
  // }
}

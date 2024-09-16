import 'package:flutter/material.dart';
import 'package:robin_70/app.dart';
import 'package:robin_70/widget/detail_page.dart';
import 'package:robin_70/widget/detail_button.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
      _hotel(context),
      _kado(context),
    ]);
  }

  Widget _background(BuildContext context) {
    return SizedBox(
        width: App.screenWidth,
        height: App.screenHeight,
        child: const Image(
            opacity: AlwaysStoppedAnimation(.3),
            image: AssetImage("assets/Robin70.png"),
            fit: BoxFit.scaleDown));
  }

  //----------------------------------------------
  Widget _info(BuildContext context) {
    return HoverButton(
        key: UniqueKey(),
        top: App.screenHeight * 0.2,
        left: App.screenWidth * 0.2,
        image: "assets/info.png",
        targetWidget: DetailPage(htmlText: App.htmlInfo),
        icon: const Icon(Icons.info_outline),
        toolTip: 'Info algemeen');
  }

//----------------------------------------------

  Widget _kado(BuildContext context) {
    return HoverButton(
        key: UniqueKey(),
        top: App.screenHeight * 0.2,
        left: App.screenWidth * 0.6,
        image: "assets/kado-tip.jpg",
        targetWidget: DetailPage(htmlText: App.htmlGift),
        icon: const Icon(Icons.card_giftcard),
        toolTip: 'Kado tip ');
  }
  //----------------------------------------------

  Widget _parkeren(BuildContext context) {
    return HoverButton(
        key: UniqueKey(),
        top: App.screenHeight * 0.6,
        left: App.screenWidth * 0.2,
        image: "assets/parkeren.jpg",
        targetWidget: DetailPage(htmlText: App.htmlParking),
        icon: const Icon(Icons.local_parking),
        toolTip: 'Parkeren');
  }

  //----------------------------------------------

  Widget _hotel(BuildContext context) {
    return HoverButton(
        key: UniqueKey(),
        top: App.screenHeight * 0.6,
        left: App.screenWidth * 0.6,
        image: "assets/hotel.png",
        targetWidget: DetailPage(htmlText: App.htmlHotel),
        icon: const Icon(Icons.hotel),
        toolTip: 'Hotel ');
  }
}

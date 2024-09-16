import 'package:flutter/material.dart';

class App {
  static final materialKey = GlobalKey<NavigatorState>();

  static late double screenWidth;
  static late double screenHeight;

  static void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
  }

  static String htmlInfo = """
<body>

<h1 style='color: white; font-size:60px; font-style:italic; background-color: rgb(0,122,255))'> Algemene info </h1>
  <h2>Locatie</h2>
    RGB Bar Eindhoven<br>
    Adres: Stratumseind 34<br>
    5611 ET Eindhoven<br>

    <br>
    <h2>Agenda</h2>
    <ul>
        <li>18.00 - 19.00 : Pasta maaltijd</li>
        <li>19.15 - 19.30 : Warming Up</li>
        <li>19.15 - 19.30 : Warming Up</li>
        <li>19.30 - 20.30 : Silent Disco marathon</li>
        <li>20.30 - 20.45 : Pub Quiz</li>
        <li>20.45 - 20.00 : Finish Silent Disco Marathon</li>
    </ul>

    <br><br>

    <h2>RSVP & Vragen</h2>
    robin.bakkerus@gmail.com


</body>
""";

//----------------------------------------------------------------

  static String htmlParking = """
<body>

<h1 style='color: white; font-size:60px; font-style:italic; background-color: rgb(0,122,255))'> Algemene info </h1>
  <h2>Parkeren</h2>
    RGB Bar Eindhoven<br>
    Adres: Stratumseind 34<br>
    5611 ET Eindhoven<br>

    <br>
    <h2>Agenda</h2>
    <ul>
        <li>18.00 - 19.00 : Pasta maaltijd</li>
        <li>19.15 - 19.30 : Warming Up</li>
        <li>19.15 - 19.30 : Warming Up</li>
        <li>19.30 - 20.30 : Silent Disco marathon</li>
        <li>20.30 - 20.45 : Pub Quiz</li>
        <li>20.45 - 20.00 : Finish Silent Disco Marathon</li>
    </ul>

    <br><br>

    <h2>RSVP & Vragen</h2>
    robin.bakkerus@gmail.com


</body>
""";

//----------------------------------------------------------------

  static String htmlHotel = """
<body>

<h1 style='color: white; font-size:60px; font-style:italic; background-color: rgb(0,122,255))'> Algemene info </h1>
  <h2>Parkeren</h2>
    RGB Bar Eindhoven<br>
    Adres: Stratumseind 34<br>
    5611 ET Eindhoven<br>

    <br>
    <h2>Agenda</h2>
    <ul>
        <li>18.00 - 19.00 : Pasta maaltijd</li>
        <li>19.15 - 19.30 : Warming Up</li>
        <li>19.15 - 19.30 : Warming Up</li>
        <li>19.30 - 20.30 : Silent Disco marathon</li>
        <li>20.30 - 20.45 : Pub Quiz</li>
        <li>20.45 - 20.00 : Finish Silent Disco Marathon</li>
    </ul>

    <br><br>

    <h2>RSVP & Vragen</h2>
    robin.bakkerus@gmail.com


</body>
""";

//----------------------------------------------------------------

  static String htmlGift = """
<body>

<h1 style='color: white; font-size:60px; font-style:italic; background-color: rgb(0,122,255))'> Algemene info </h1>
  <h2>Parkeren</h2>
    RGB Bar Eindhoven<br>
    Adres: Stratumseind 34<br>
    5611 ET Eindhoven<br>

    <br>
    <h2>Agenda</h2>
    <ul>
        <li>18.00 - 19.00 : Pasta maaltijd</li>
        <li>19.15 - 19.30 : Warming Up</li>
        <li>19.15 - 19.30 : Warming Up</li>
        <li>19.30 - 20.30 : Silent Disco marathon</li>
        <li>20.30 - 20.45 : Pub Quiz</li>
        <li>20.45 - 20.00 : Finish Silent Disco Marathon</li>
    </ul>

    <br><br>

    <h2>RSVP & Vragen</h2>
    robin.bakkerus@gmail.com


</body>
""";
}

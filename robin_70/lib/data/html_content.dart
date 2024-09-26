class HtmlContent {
  final _imageRgb = 'asset:assets/rgb.jpg';
  final _imageAdu6 = 'asset:assets/alpe_du_zes.jpg';
  final _imageBar = 'asset:assets/rgb-bar.jpg';
  final _imageDisco = 'asset:assets/disco.jpg';

  String info() => """
<body>

<h1 style='color: white; font-size:60px; font-style:italic; background-color: rgb(250,62,53))'> Algemeen</h1>
  <h2>Locatie</h2>
        <a href="https://www.rgb.nl/eindhoven">Silent Disco RGB.</a> <br>
        Stratumseind 34, Ehv
        <br>
<img src="$_imageRgb">
<img src="$_imageBar">
<!-- img src="$_imageDisco" -->
    <br>
    <h2>Agenda</h2>
    <ul>
        <li>16.30 - 17.00 : Inloop</li>
        <li>18.00 - 19.00 : Pasta maaltijd</li>
        <li>19.15 - 19.30 : Warming Up</li>
        <li>19.30 - 20.30 : Silent Disco marathon</li>
        <li>20.30 - 20.45 : RGB Pub Quiz</li>
        <li>20.45 - 22.00 : Finish Silent Disco Marathon</li>
        <li>Na afloop kun je nog een deel van de <a href="https://gloweindhoven.nl/">Glow</a> route lopen </li>
    </ul>

    <br><br>

    <h2>RSVP & Vragen</h2>
    robin.bakkerus@gmail.com


</body>
""";

//---------------------------------------------------------------------------
  String gift() => """
<body>

<h1 style='color: white; font-size:60px; font-style:italic; background-color: rgb(72,178,80))'>Kado tip</h1>
In plaats van een kado vraag ik een donatie voor Alpe du Zes.<br><br>

<img src="$_imageAdu6" width="90%">
<br><br>

In 2013 heb ik samen met Rene en Niels meegedaan aan de Alpe du Zes, en ben toen 5 keer omhoog gefiets.<br>
In 2025 wil ik nog &egrave;&egrave;n keer meedoen, en dan is maar &egrave;&egrave;n keer omhoog fietsen ook prima.
<br>
Binnenkort hoop ik op deze <a href="https://www.opgevenisgeenoptie.nl/donatie">website</a> mijn donatie pagina te openen.

</body>
""";

//----------------------------------------------------------

  String hotel() => """
<body>



</body>
""";

//----------------------------------------------------------

  String parking() => """
<body>

<h1 style='color: white; font-size:60px; font-style:italic; background-color: rgb(33,150,243))'>Parkeren</h1>
PSV speelt dat weekend uit. De Glow bezoekers komen pas later en het winkelpubliek gaat dan weer naar huis, 
dus het zou rond 16:00 uur niet zo moeilijk moeten zijn om in de buurt te parkeren.<br>
Als je een stuk moet wandelen is ook niet erg: vanwege het Glow festival is dat erg sfeervol zie:
<a href="https://gloweindhoven.nl/"> Glow</a>
<br><br>
<a href="https://www.prettigparkeren.nl/kaart/#!Eindhoven/">Overzicht alle parkeerplakken</a>
<br><br>
<h2>Geadviseerde parkeerplekken</h2>
<ul>
<li>Q-Park Heuvel, grote parkeergarage in het centrum (3 min)</li>
<li>Q-Park Stadhuisplein, grote parkeergarage in het centrum (3 min)</li>
<li>Parking Philips stadion, grote parkeergarage goedkoop (25 min)</li>
<li>Ekoplaza Stratumsedijk Stratumsedijk 34, gratis (13 min)</li>
<li>Parkeerplaats Praxis, gratis (16 min)</li>
</ul>


 

</body>
""";
}

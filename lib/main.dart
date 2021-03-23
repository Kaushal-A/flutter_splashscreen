import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Splash2(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 1,
      navigateAfterSeconds: new SecondScreen(),
      title: new Text('Kaushal',textScaleFactor: 2,),
      image: new Image.network('https://lh3.googleusercontent.com/proxy/5PqiGIEY4Y02SpcpjdIf_W6lA4RovcGuu58ECZsFi3uDtACK444StToJOwfN5vBVKhkElJJUlt8EF2OSqUiP8vH3ATY2hCf_Dw0pjJemUPiTZ_DWqbuxcqGc-Nw41A'),
      loadingText: Text("Loading"),
      photoSize: 100.0,
      loaderColor: Colors.blue,
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("its K")),
      body: Center(
          child:Text("Home page",textScaleFactor: 2,)
      ),
    );
  }
}




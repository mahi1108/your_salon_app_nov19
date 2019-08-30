import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:your_salon_app/SelectOptions.dart';
import 'LanguageSelection.dart';

class AppSplashScreen extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashState();
  }
}

class SplashState extends State<AppSplashScreen>
{
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      home: new Scaffold(
        body: new SplashScreen(
            seconds: 10,
            image: Image.asset("assets/splash_logo.png"),
            loaderColor: Colors.green,
            photoSize: 80,
            backgroundColor: Colors.white,
            title: new Text("\n\nYour Salon \n صالون الخاص بك",
            style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: Colors.green,
            ),
            textAlign: TextAlign.center,),
          navigateAfterSeconds: LanguageSelection(),
        ),
      ),
    );
  }
}


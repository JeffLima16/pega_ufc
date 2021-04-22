import 'package:ambiental_app/pages/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:ambiental_app/mainPage.dart';
import 'package:ambiental_app/pages/controlePage.dart';
import 'package:ambiental_app/pages/Screens/perfil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'mainPage',
        routes: {
          'mainPage': (context) => MainPage(),
          "onBoarding": (context) => OnBoardingPage(),
          //'introPage': (context) => IntroPage(),
          'controlePage': (context) => ControlePage(),
          'perfil': (context) => Perfil(),
        });
  }
}

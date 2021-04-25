import 'package:ambiental_app/mainPage.dart';
//import 'package:ambiental_app/pages/user_name.dart';
import 'package:flutter/material.dart';

//import 'pages/Screens/perfil.dart';
import 'pages/controlePage.dart';
import 'pages/onboarding.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'mainPage',
        routes: {
          'mainPage': (context) => MainPage(),
          "onBoarding": (context) => OnBoardingPage(),
          //"user_name": (context) => UserInput_name(),
          //"perfil": (context) => Perfil(),
          "controlePage": (context) => ControlePage(),
        });
  }
}

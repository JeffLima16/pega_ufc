import 'package:flutter/material.dart';
import 'package:ambiental_app/mainPage.dart';
import 'package:ambiental_app/pages/controlePage.dart';
import 'package:ambiental_app/pages/introPage.dart';
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
          'introPage': (context) => IntroPage(),
          'controlePage': (context) => ControlePage(),
          'perfil': (context) => Perfil(),
        });
  }
}

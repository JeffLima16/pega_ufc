import 'package:flutter/material.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';
import 'Screens/faleConosco.dart';
import 'Screens/Feed.dart';
import 'Screens/mapa.dart';
import 'Screens/qRCode.dart';
import 'Screens/perfil.dart';

class ControlePage extends StatefulWidget {
  @override
  _ControlePageState createState() => _ControlePageState();
}

class _ControlePageState extends State<ControlePage> {
  int _pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TitledBottomNavigationBar(
          currentIndex: _pageIndex,
          onTap: (index) => {
                setState(() => _pageIndex = index),
              },
          reverse: true,
          curve: Curves.easeInBack,
          activeColor: Colors.green,
          inactiveColor: Colors.blueGrey,
          items: [
            TitledNavigationBarItem(
                title: Text('Perfil'), icon: Icons.person_outline),
            TitledNavigationBarItem(
                title: Text('Novidades'), icon: Icons.amp_stories_outlined),
            TitledNavigationBarItem(
                title: Text('qRCode'), icon: Icons.qr_code_scanner_sharp),
            TitledNavigationBarItem(
                title: Text('Mapa'), icon: Icons.location_on),
            TitledNavigationBarItem(
                title: Text('Fale Conosco'), icon: Icons.mail_sharp),
          ]),
      body: IndexedStack(
        children: [
          Perfil(),
          Feed(),
          QrCode(),
          Mapa(),
          FaleConosco(),
        ],
        index: _pageIndex,
      ),
    );
  }
}

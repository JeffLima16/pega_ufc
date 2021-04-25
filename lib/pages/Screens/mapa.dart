import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Mapa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () async {
                const url = 'http://www.pega.ufc.br/campus-sustentavel/';
                if (await canLaunch(url)) {
                  await launch(url, forceWebView: true);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/img/mapa.jpg',
                    ),
                  ),
                ),
              ),
            ),
            Text(
              'Em desenvolvimento',
              style: TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Mapa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
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
          Text(
            'Em desenvolvimento',
            style: TextStyle(
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ));
  }
}

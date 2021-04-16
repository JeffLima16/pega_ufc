import 'package:flutter/material.dart';

class FaleConosco extends StatelessWidget {
  final List<Map> myProducts =
      List.generate(4, (index) => {"id": index, "name": "Product $index"})
          .toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Center(
            child: Container(
              child: Image.asset('assets/img/icon_desenvolviment.png'),
            ),
          ),
          SizedBox(
            height: 30,
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
    );
  }
}

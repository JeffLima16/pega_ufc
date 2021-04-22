import 'package:ambiental_app/Widgets/scan_button.dart';
import 'package:flutter/material.dart';

class QrCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 300,
                //color: Colors.green,
              ),
              ScanButton(),
            ],
          ),
        )
      ],
    ));
  }
}

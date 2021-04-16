import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:url_launcher/url_launcher.dart';

class ScanButton extends StatefulWidget {
  @override
  _ScanButtonState createState() => _ScanButtonState();
}

class _ScanButtonState extends State<ScanButton> {
  String _scanBarcode = "";

  @override
  void initState() {
    super.initState();
  }

  Future<dynamic> scanQR() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          "#F56645", "Cancelar", false, ScanMode.QR);
    } on PlatformException {
      barcodeScanRes = 'Falhando para essa versão.';
    }
    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
      _launchURL(barcodeScanRes);
    });
  }

  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[100],
        alignment: Alignment.center,
        child: Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green[400],
                      shadowColor: Colors.grey,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  onPressed: () => scanQR(),
                  child: Text("Iniciar leitura QR ")),
            ]));
  }
}

_launchURL(String barcodeScanRes) async {
  if (await canLaunch(barcodeScanRes)) {
    await launch(barcodeScanRes);
  } else {
    throw 'Could not launch $barcodeScanRes';
  }
}

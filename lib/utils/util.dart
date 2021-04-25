import 'package:flutter/material.dart';
import 'package:ambiental_app/models/scan_model.dart';
//import 'package:pega_ufc/providers/db_provider.dart';
import 'package:url_launcher/url_launcher.dart';

launchURL(BuildContext context, ScanModel scan) async {
  //const url = scan.valor;
  if (scan.tipo == 'http') {
    //abrir site da web;
    final url = scan.valor;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  } else {
    Navigator.pushNamed(context, 'map', arguments: scan);
  }
}

Future<dynamic> faunaUFC() async {
  const url =
      'http://www.pega.ufc.br/projetos/fauna-flora-do-campus-do-pici/flora-do-campus-do-pici/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

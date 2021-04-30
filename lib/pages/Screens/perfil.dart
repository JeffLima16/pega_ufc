import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[400],
        body: Center(
            child: Padding(
          padding:
              const EdgeInsets.only(left: 50, right: 50, bottom: 10, top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/img/user2.png'),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Aluno UFC',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green[300],
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  height: 50,
                  width: 500,
                  child: Center(
                    child: Text(
                      'Conheça o aplicativo',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green[300],
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    height: 50,
                    width: 500,
                    child: Center(
                      child: Text(
                        'Games',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () async {
                    const url =
                        'http://www.pega.ufc.br/projetos/fauna-flora-do-campus-do-pici/fauna-do-campus-do-pici/';
                    if (await canLaunch(url)) {
                      await launch(
                        url,
                      );
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green[300],
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    height: 50,
                    width: 500,
                    child: Center(
                      child: Text(
                        'Fauna UFC',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () async {
                    const url =
                        'http://www.pega.ufc.br/projetos/fauna-flora-do-campus-do-pici/flora-do-campus-do-pici/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green[300],
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    height: 50,
                    width: 500,
                    child: Center(
                      child: Text(
                        'Flora UFC',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}

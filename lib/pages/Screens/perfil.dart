import 'package:flutter/material.dart';

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
              Text(
                'Jefferson',
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
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green[300],
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    height: 50,
                    width: 500,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Perfil',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )),
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
                      'Em breve',
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
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green[300],
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  height: 50,
                  width: 500,
                  child: Center(
                    child: Text(
                      'Em breve',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
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

import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset('assets/img/moldura01.png'),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 300,
                child: Image.asset('assets/img/logo.png'),
                //color: Colors.green,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'onBoarding');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[400],
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                ),
                child: Text('Entrar'),
              )
            ],
          ),
        )
      ],
    ));
  }
}

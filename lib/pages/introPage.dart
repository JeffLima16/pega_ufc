import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/img/onBoarding01.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/img/onBoarding02.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/img/onBoarding03.jpg'),
                  fit: BoxFit.fill),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'controlePage');
                  },
                  child: Text('Iniciar'),
                  style: ElevatedButton.styleFrom(
                      //padding: EdgeInsetsDirectional.only(bottom: 30.0),
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent,
                      alignment: Alignment.bottomCenter,
                      textStyle: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

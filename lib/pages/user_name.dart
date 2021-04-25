/*import 'package:flutter/material.dart';

class UserInput_name extends StatefulWidget {
  @override
  _UserInput_nameState createState() => _UserInput_nameState();
}

class _UserInput_nameState extends State<UserInput_name> {
  TextEditingController _textoNome = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Olá, digite seu nome por favor!",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            controller: _textoNome,
            decoration: new InputDecoration(
              hintText: "Nome",
              contentPadding: EdgeInsets.all(10.0),
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Perfil(_textoNome.text),
                  ));
            },
            child: Text(
              "Enviar",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    ));
  }
}
*/

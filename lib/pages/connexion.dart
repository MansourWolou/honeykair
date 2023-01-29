import 'package:flutter/material.dart';

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  foregroundColor: Colors.blue,
  backgroundColor: Colors.orange,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(50)),
  ),
  //padding: const EdgeInsets.all(100)
);

class Connexion extends StatelessWidget {
  const Connexion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: const Color(0xFFF8E5C5),
      child: Form(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 200, 20, 0),
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Mot de passe '),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
              child: TextButton(
                style: flatButtonStyle,
                onPressed: () {
                  
                },
                child: const Text("Continuer"),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

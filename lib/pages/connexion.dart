import 'package:flutter/material.dart';
import './home.dart';
import '../api.dart';

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  foregroundColor: const Color.fromARGB(255, 0, 0, 0),
  backgroundColor: Colors.orange,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(50)),
  ),
  //padding: const EdgeInsets.all(100)
);

class Connexion extends StatefulWidget {
  const Connexion({super.key});

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: const Color(0xFFF8E5C5),
      child: Form(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 200, 20, 0),
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(labelText: 'Email'),
              controller: controller1,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Mot de passe '),
              controller: controller2,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
              child: TextButton(
                style: flatButtonStyle,
                onPressed: () {
                  auth(controller1.text, controller2.text);
                },
                child: const Text("Continuer"),
              ),
            )
          ],
        ),
      ),
    ));
  }

    Future<void> auth(String mail, String pwd) async {
    Api api = Api();
    String res = await api.login(mail, pwd);
    if (res == 'user Already exist ') {
      print("pop a dialog to say it");
      
      const AlertDialog(
        title: Text("error"),
        content: Text("user already exist"),
      );
    } else {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const Home(),
      ));
    }
  }
}

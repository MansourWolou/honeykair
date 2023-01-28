import 'package:flutter/material.dart';

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  foregroundColor: Colors.blue,
  backgroundColor: Colors.orange,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(50)),
  ),
);
class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
      body: Container(
        color: const Color(0xFFF8E5C5),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(image: AssetImage('assets/images/Logo-final.png'))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Honey k'air",
                      style: TextStyle(
                        fontSize: 30,
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    style: flatButtonStyle,
                    onPressed: () {},
                    child: Text('Inscription'),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    style: flatButtonStyle,
                    onPressed: () {},
                    child: Text('Connexion'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  
  }
}
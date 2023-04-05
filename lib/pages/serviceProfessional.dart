import 'package:flutter/material.dart';

class ServiceProfessional extends StatefulWidget {
  const ServiceProfessional({super.key});

  @override
  State<ServiceProfessional> createState() => _ServiceProfessionalState();
}

class _ServiceProfessionalState extends State<ServiceProfessional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                color: Colors.white,
                padding: const EdgeInsets.only(top: 50.0),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Image(
                        image: AssetImage('assets/images/Logo-final.png'),
                        height: 50,
                        width: 100,
                      ),
                      Card(
                          elevation: 0,
                          child: Text('Professionals',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20.0,
                                height: 2.0,
                              )))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 4.0,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                        margin: const EdgeInsets.only(bottom: 0, top: 25),
                        color: const Color.fromARGB(255, 248, 212, 150),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 24.0, bottom: 24, left: 48, right: 48),
                              child: const Text('Mr.Exemple',
                                  textAlign: TextAlign.center),
                            ),
                            const Image(
                              image: AssetImage(
                                  'assets/images/coiffeurExemple.png'),
                              height: 70,
                              width: 200,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 24.0, bottom: 12, left: 48, right: 48),
                              child: const Text('Ville',
                                  textAlign: TextAlign.center),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 12.0, bottom: 24, left: 0, right: 0),
                              child: const Text('specialité',
                                  textAlign: TextAlign.left),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 4.0,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                        margin: const EdgeInsets.only(bottom: 0, top: 25),
                        color: const Color.fromARGB(255, 248, 212, 150),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 24.0, bottom: 24, left: 48, right: 48),
                              child: const Text('Mr.Exemple',
                                  textAlign: TextAlign.center),
                            ),
                            const Image(
                              image: AssetImage(
                                  'assets/images/coiffeurExemple.png'),
                              height: 70,
                              width: 200,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 24.0, bottom: 12, left: 48, right: 48),
                              child: const Text('Ville',
                                  textAlign: TextAlign.center),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 12.0, bottom: 24, left: 0, right: 0),
                              child: const Text('specialité',
                                  textAlign: TextAlign.left),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 4.0,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                        margin: const EdgeInsets.only(bottom: 25, top: 25),
                        color: const Color.fromARGB(255, 248, 212, 150),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 24.0, bottom: 24, left: 48, right: 48),
                              child: const Text('Mr.Exemple',
                                  textAlign: TextAlign.center),
                            ),
                            const Image(
                              image: AssetImage(
                                  'assets/images/coiffeurExemple.png'),
                              height: 70,
                              width: 200,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 24.0, bottom: 12, left: 48, right: 48),
                              child: const Text('Ville',
                                  textAlign: TextAlign.center),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 12.0, bottom: 24, left: 0, right: 0),
                              child: const Text('specialité',
                                  textAlign: TextAlign.left),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]))));
  }
}

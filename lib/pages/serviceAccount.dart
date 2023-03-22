import 'package:flutter/material.dart';

class ServiceAccount extends StatelessWidget {
  const ServiceAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                color: Colors.white,
                padding: EdgeInsets.only(top: 50.0),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Image(
                        image: AssetImage('assets/images/Logo-final.png'),
                        height: 100,
                        width: 200,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Card(
                          elevation: 0,
                          child: Text('Your account',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20.0,
                                height: 2.0,
                              )))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                        margin: EdgeInsets.only(bottom: 0, top: 25),
                        color: Color.fromARGB(255, 248, 212, 150),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 24.0, bottom: 24, left: 48, right: 48),
                          child: Text('Analyse your hair profile',
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Card(
                          elevation: 0,
                          // shape: RoundedRectangleBorder(
                          //   side: BorderSide(
                          //     color: Color.fromARGB(255, 255, 255, 255),
                          //   ),
                          // ),
                          margin: EdgeInsets.only(top: 50.0, left: 20.0),
                          child: Text('Help & Support',
                              textAlign: TextAlign.center))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                        margin: EdgeInsets.only(bottom: 0, top: 5),
                        color: Color.fromARGB(255, 248, 212, 150),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 24.0, bottom: 24, left: 128.5, right: 128.5),
                          child: Text('FAQ', textAlign: TextAlign.center),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                        color: Color.fromARGB(255, 248, 212, 150),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 24.0, bottom: 24, left: 100, right: 100),
                          child:
                              Text('Contact Us', textAlign: TextAlign.center),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Card(
                          elevation: 0,
                          margin: EdgeInsets.only(top: 50.0, left: 20.0),
                          child: Text('Legal', textAlign: TextAlign.center))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                        margin: EdgeInsets.only(bottom: 0, top: 5),
                        color: Color.fromARGB(255, 248, 212, 150),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 24.0, bottom: 24, left: 78, right: 78),
                          child: Text('Terms of  Services',
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                        color: Color.fromARGB(255, 248, 212, 150),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 24.0, bottom: 24, left: 90, right: 90),
                          child: Text('Privacy Policy',
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Card(
                        margin: EdgeInsets.only(bottom: 50, top: 50),
                        color: Color.fromARGB(255, 231, 125, 82),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 12.0, bottom: 12, left: 12, right: 12),
                          child: Text('Change your eMail',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10.0,
                                height: 2.0,
                              )),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.only(bottom: 50, top: 50, left: 15),
                        color: Color.fromARGB(255, 231, 125, 82),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 12.0, bottom: 12, left: 45, right: 45),
                          child: Text('logout',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10.0,
                                height: 2.0,
                              )),
                        ),
                      ),
                    ],
                  ),
                ]))));
  }
}

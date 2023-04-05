import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ServiceMain extends StatelessWidget {
  const ServiceMain({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
            child: Column(children: <Widget>[
      Container(
        color: Colors.white,
        child: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 248, 212, 150),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.elliptical(200, 50),
                  bottomLeft: Radius.elliptical(150, 20)),
            ),
            width: MediaQuery.of(context).size.width,
            height: 206,
            padding: const EdgeInsets.only(top: 70, bottom: 70),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(
                    image: AssetImage('assets/images/Logo-final.png'),
                    height: 60,
                    width: 120,
                  ),
                  Card(
                    elevation: 0,
                    color: Color.fromARGB(255, 248, 212, 150),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 20.0, bottom: 24, left: 20, right: 48),
                      child: Text('HoneyK\'Hair', textAlign: TextAlign.center),
                    ),
                  ),
                ],
              ),
            ])),
      ),
      Container(
          // height: MediaQuery.of(context).size.height * 0.65,  ---> si la page est  trop petite
          // width: MediaQuery.of(context).size.width,
          color: Colors.white,
          padding: const EdgeInsets.only(top: 50.0, bottom: 50),
          child: Column(children: [
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
                        top: 24.0, bottom: 24, left: 18, right: 18),
                    child: Text(
                        'petit texte de présentation \n trop cool de ouf !',
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
                  margin: EdgeInsets.only(bottom: 0, top: 10),
                  color: Color.fromARGB(255, 248, 212, 150),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 24.0, bottom: 24, left: 32, right: 32),
                    child: Text('Analyse my hair profile',
                        textAlign: TextAlign.center),
                  ),
                ),
              ],
            ),
          ])),
      Container(
        padding:
            const EdgeInsets.only(top: 24.0, bottom: 24, left: 10, right: 10),
        color: const Color.fromARGB(255, 255, 255, 255),
        child: CarouselSlider(
          options: CarouselOptions(height: 400.0),
          items: [
            Image.asset('assets/images/coiffeurExemple.png'),
            Image.asset('assets/images/Logo-final.png'),
            Image.asset('assets/images/coiffeurExemple.png'),
            Image.asset('assets/images/Logo-final.png')
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 248, 212, 150)),
                    child: i);
              },
            );
          }).toList(),
        ),
      )

      //
    ])));
  }
}

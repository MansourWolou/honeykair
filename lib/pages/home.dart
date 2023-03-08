import 'package:flutter/material.dart';
import 'serviceMain.dart';
import 'serviceAccount.dart';
import 'serviceAdvice.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomStateFull();
  }
}

class HomStateFull extends StatefulWidget {
  const HomStateFull({super.key});

  @override
  State<HomStateFull> createState() => _HomStateFull();
}

class _HomStateFull extends State<HomStateFull> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    ServiceMain(),
    ServiceAdvice(),
    ServiceAccount(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      backgroundColor: const Color(0xFFF8E5C5),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rocket),
            label: 'Conseil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            label: 'Compte',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        backgroundColor: const Color(0xFFF8E5C5),
        onTap: _onItemTapped,
      ),
    );
  }
}

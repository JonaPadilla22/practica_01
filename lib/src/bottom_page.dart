
import 'package:flutter/material.dart';

class BottomNavigatorPage extends StatefulWidget {
  @override
  State<BottomNavigatorPage> createState() => _BottomNavigatorPageState();
}

class _BottomNavigatorPageState extends State<BottomNavigatorPage> {
  final tabs = [
    Center(
      child: Text('Mapa', style: TextStyle(color: Colors.red, fontSize: 50)),
    ),
    Center(
      child: Text('E-mail', style: TextStyle(color: Colors.amber, fontSize: 50)),
    ),
    Center(
      child: Text('Alarma', style: TextStyle(color: Colors.blue, fontSize: 50)),
    )
  ];

  int _currentIndex = 0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 07'),
        centerTitle: true,
        backgroundColor: Colors.green[300],
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green[200],
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Mapa'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'E-mail'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm),
            label: 'Alarma'
          )
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
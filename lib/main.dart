import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarNavBar(),
    );
  }
}

class BelajarNavBar extends StatefulWidget {
  @override
  _BelajarNavBarState createState() => _BelajarNavBarState();
}

class _BelajarNavBarState extends State<BelajarNavBar> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  List<Widget> _widgetOptions = <Widget>[
    pagePhone(),
    pageCamera(),
    pageChats(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Selected Navbar"),
      ),
      body: _widgetOptions.elementAt(_selectedNavbar),
      // body: Center(
      //   child: Text("Tab Index yang aktif : $_selectedNavbar", style: TextStyle(fontSize: 16)),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: ('telepon'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: ('kamera'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: ('pesan'),
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}

class pagePhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(
        Icons.phone,
        color: Colors.blue,
        size: 100,
      ),
    );
  }
}

class pageCamera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(
        Icons.camera,
        color: Colors.blue,
        size: 100,
      ),
    );
  }
}

class pageChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(
        Icons.message,
        color: Colors.blue,
        size: 100,
      ),
    );
  }
}

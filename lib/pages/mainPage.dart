import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:tumdi_1/pages/Homepage.dart';
import 'package:tumdi_1/pages/latest.dart';
import 'package:tumdi_1/pages/mydrawer.dart';
import 'package:tumdi_1/pages/profile.dart';
import 'package:tumdi_1/pages/today.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Homepage(),
    Latest(),
    Today(),
    Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
        ),
      )),
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(253, 231, 234, 1),
        extendBody: true,
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        drawer: const Mydrawer(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Latest',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_view_day),
              label: 'Today',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromRGBO(244, 111, 128, 1),
          unselectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

// Screens for the different bottom navigation items

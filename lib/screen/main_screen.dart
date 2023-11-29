import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:uts/screen/grid_screen.dart';
import 'package:uts/screen/list_screen.dart';
import 'package:uts/screen/notif_screen.dart';
import 'package:uts/screen/profil_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int _index = 0;
  final List<Widget> _screens = [
    const gridpage(),
    ListPage(),
    const notif(),
    const profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: const Text('Rumah Makan'))),
      body: _screens[_index],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: _index,
        height: 60.0,
        items: const [
          Icon(Icons.home, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.notifications, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Color.fromARGB(255, 255, 208, 0),
        buttonBackgroundColor: Color.fromARGB(255, 255, 208, 0),
        backgroundColor: Color.fromARGB(255, 10, 10, 10),
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}

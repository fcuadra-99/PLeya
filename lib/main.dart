import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pleya/components/bottombar.dart';
import 'package:pleya/view/home.dart';
import 'package:pleya/view/chat.dart';

void main() {
  runApp(const Player());
}

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  int _selectedIndex = 0; 

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    ChatBotPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pleya',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amberAccent),
        useMaterial3: true,
      ),
      home: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Colors.black.withOpacity(0.5),
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          title: const Text(
            'Pleya',
            style: TextStyle(color: Colors.white, fontFamily: 'Dotto'),
          ),
        ),
        body: Center(
          child: _pages.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black.withOpacity(0.7),
          child: BottomBar(
            selectedIndex: _selectedIndex,
            onItemTapped: _onItemTapped,
          ),
        ),
      ),
    );
  }
}

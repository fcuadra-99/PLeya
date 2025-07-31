import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pleya/components/bottomBar.dart';
import 'package:pleya/view/home.dart';

void main() {
  runApp(Player());
}

class Player extends StatelessWidget {
  Player({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pleya',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amberAccent),
      ),
      home: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Colors.black.withValues(alpha: 0.5),
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          title: const Text(
            'Pleya',
            style: TextStyle(color: Colors.white, fontFamily: 'Dotto'),
          ),
        ),
        body: HomePage(),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black.withOpacity(
            0.7,
          ), // Semi-transparent black background
          child: BottomBar()
        ),
      ),
    );
  }
}

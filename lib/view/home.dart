import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset('assets/images/bg2.gif', fit: BoxFit.cover),
        ),
        const Center(
          child: Text(
            'Welcomee',
            style: TextStyle(
              fontSize: 52,
              fontWeight: FontWeight.bold,
              fontFamily: 'Dotto',
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: Colors.black,
                  offset: Offset(3.0, 3.0),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
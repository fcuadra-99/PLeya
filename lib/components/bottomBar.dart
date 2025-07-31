import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  double _currentSongProgress = 0.5;

  void _onPlayerButtonPressed(String buttonName) {
    print('$buttonName button pressed!');
    // Add your logic here, e.g., calling a music service method
  }

  void _onSliderChanged(double newValue) {
    setState(() {
      _currentSongProgress = newValue;
    });

    // In a real app, you would use this to seek the audio to a new position.
    print('Song progress changed to: $newValue');
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min, // Make the row as small as possible
      children: [
        // Previous Button

        // Slider
        Expanded(
          child: Slider(
            value: _currentSongProgress,
            min: 0.0,
            max: 1.0,
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
            onChanged: _onSliderChanged,
          ),
        ),
        IconButton(
          icon: const Icon(
            Icons.skip_previous, 
            color: Colors.white, 
            size: 30
            ),
                      onPressed: () {
            _onPlayerButtonPressed('Previous');
          },
        ),
        // Play/Pause Button
        IconButton(
          icon: const Icon(
            Icons.play_circle_fill,
            color: Colors.white,
            size: 50,
          ),
          onPressed: () {
            _onPlayerButtonPressed('Play/Pause');
          },
        ),
        // Next Button
        IconButton(
          icon: const Icon(Icons.skip_next, color: Colors.white, size: 30),
          onPressed: () {
            _onPlayerButtonPressed('Next');
          },
        ),
      ],
    );
  }
}

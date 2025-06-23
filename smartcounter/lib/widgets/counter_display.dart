import 'package:flutter/material.dart'; // Import Flutter's core UI library

// Stateless widget to display the current counter value
class CounterDisplay extends StatelessWidget {
  final int count; // The value of the counter to display

  // Constructor requires the current count value
  const CounterDisplay({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Count:$count', // Display the counter value as text
      style:
          Theme.of(
            context,
          ).textTheme.headlineMedium, // Use the app's headline style
    );
  }
}

/*
import 'package:flutter/material.dart';
Imports Flutter's core UI library for widgets and theming.

CounterDisplay
A stateless widget that takes an integer count and displays it as text.

Text
Shows the current count in the UI, styled using the app's theme.
*/

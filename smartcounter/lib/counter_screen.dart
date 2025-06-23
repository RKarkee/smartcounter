import 'package:flutter/material.dart'; // Flutter's core UI library
import 'package:smartcounter/widgets/counter_display.dart'; // Custom widget to display the counter value
import 'package:smartcounter/widgets/theme_switch.dart'; // Custom widget for the theme switch in the AppBar

// The main screen of the app, which is stateful because it needs to update the UI when the counter or theme changes
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key}); // Constructor with optional key

  @override
  State<CounterScreen> createState() => _CounterScreenState(); // Creates the mutable state for this widget
}

// The state class holds the mutable data for CounterScreen
class _CounterScreenState extends State<CounterScreen> {
  int count = 0; // Holds the current value of the counter
  bool isDarkMode = false; // Tracks whether dark mode is enabled

  // Function to increment the counter and update the UI
  void _incrementCounter() {
    setState(() {
      count++; // Increase the counter by 1
    });
  }

  // Function to toggle between light and dark mode
  void _toggleTheme(bool value) {
    setState(() {
      isDarkMode = value; // Update the theme mode
    });
  }

  // The build method describes how to display the UI
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialApp is the root widget for the app, providing theme and navigation
      themeMode:
          isDarkMode
              ? ThemeMode.dark
              : ThemeMode.light, // Switches theme based on isDarkMode
      theme: ThemeData.light(), // Light theme data
      darkTheme: ThemeData.dark(), // Dark theme data
      home: Scaffold(
        // Scaffold provides the basic visual layout structure
        appBar: AppBar(
          // AppBar is the top bar of the app
          title: const Text('Smart Counter'), // Title on the left
          actions: [
            // Widgets on the right side of the AppBar
            ThemeSwitch(
              value: isDarkMode, // Pass current theme state
              onChanged: _toggleTheme, // Callback to toggle theme
            ),
          ],
        ),
        body: Center(
          // Center widget centers its child both vertically and horizontally
          child: Column(
            // Column arranges its children vertically
            mainAxisAlignment:
                MainAxisAlignment.center, // Center children vertically
            crossAxisAlignment:
                CrossAxisAlignment.center, // Center children horizontally
            children: [
              CounterDisplay(
                count: count,
              ), // Custom widget to show the counter value
              const SizedBox(height: 20), // Adds vertical space
              ElevatedButton(
                // A Material Design elevated button
                onPressed:
                    _incrementCounter, // Calls _incrementCounter when pressed
                child: const Text('Increment Counter +'), // Button label
              ),
              const SizedBox(height: 20), // Adds more vertical space
              // ThemeSwitch(value: isDarkMode, onChanged: _toggleTheme), // (Commented out) Could add another theme switch here
            ],
          ),
        ),
      ),
    );
  }
}


/*
import 'package:flutter/material.dart';
Imports Flutter's core UI library, which provides all the widgets and themes.

MaterialApp
The root widget for any Flutter app using Material Design. Handles themes, navigation, and more.

Scaffold
Provides a basic visual layout structure (AppBar, body, etc.).

AppBar
The top bar of the app, with a title on the left and actions (like the theme switch) on the right.

ThemeSwitch
A custom widget (defined elsewhere) that lets the user toggle between light and dark mode.

CounterDisplay
A custom widget (defined elsewhere) that displays the current counter value.

Column
Arranges its children vertically.

Center
Centers its child widget both vertically and horizontally.

ElevatedButton
A Material Design button that triggers an action when pressed.

setState
Tells Flutter to rebuild the UI with updated data.
*/
import 'package:flutter/material.dart'; // Import Flutter's core UI library
import 'package:smartcounter/counter_screen.dart'; // Import the main screen of the app

// The main entry point of the app
void main() {
  runApp(const MyApp()); // Runs the app and attaches it to the screen
}

// The root widget of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // The build method describes how to display the UI
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Counter', // The title of the app
      // debugShowCheckedModeBanner hides the debug banner in the top right
      debugShowCheckedModeBanner: true,
      // theme: The light theme for the app
      theme: ThemeData.light(),
      // darkTheme: The dark theme for the app
      darkTheme: ThemeData.dark(),
      // themeMode: Uses the system theme (light or dark) by default
      themeMode: ThemeMode.system,
      // home: The widget displayed when the app starts
      home: const CounterScreen(),
    );
  }
}

/*
import 'package:flutter/material.dart';
Imports Flutter's core UI library for widgets and theming.

import 'package:smartcounter/counter_screen.dart';
Imports the main screen widget for the app.

void main()
The entry point of every Dart/Flutter app.
runApp(const MyApp()) launches the app.

MyApp
The root widget of the app.

Uses MaterialApp to set up app-wide configuration like title, theme, and home screen.
debugShowCheckedModeBanner: false hides the debug banner.
theme and darkTheme set the light and dark color schemes.
themeMode: ThemeMode.system uses the device's system theme.
home: const CounterScreen() sets the first screen to show.
*/

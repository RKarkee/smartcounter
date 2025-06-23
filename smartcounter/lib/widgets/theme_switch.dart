import 'package:flutter/material.dart'; // Import Flutter's core UI library

// Stateless widget for switching between light and dark themes
class ThemeSwitch extends StatelessWidget {
  final bool value; // Current theme state: true for dark, false for light
  final ValueChanged<bool> onChanged; // Callback when the switch is toggled

  // Constructor requires the current value and a callback function
  const ThemeSwitch({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // Center the row's children
      children: [
        const Text('Light'), // Label for light mode
        Switch(
          value:
              value, // Whether the switch is on (dark mode) or off (light mode)
          onChanged: onChanged, // Calls the parent callback when toggled
          activeColor: Theme.of(context).colorScheme.primary, // Switch color
        ),
        const Text('Dark'), // Label for dark mode
      ],
    );
  }
}

/*
ThemeSwitch
A stateless widget that displays a labeled switch for toggling between light and dark themes.

Row
Arranges the "Light" label, the switch, and the "Dark" label horizontally.

Switch
A Material Design switch widget.

value: Whether the switch is on or off.
onChanged: Callback to notify parent widget of changes.
activeColor: Uses the app's primary color for the switch when active.
This widget is used in the AppBar of the CounterScreen to allow users to toggle themes.
*/

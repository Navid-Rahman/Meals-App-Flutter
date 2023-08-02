import 'package:flutter/material.dart';
import 'package:meals_app/screens/tabs.dart';
import 'package:meals_app/utils/theme_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  // Run the app inside a ProviderScope to enable Riverpod state management.
  runApp(
    const ProviderScope(
      child: MealsApp(),
    ),
  );
}

// The main entry point of the application.
class MealsApp extends StatelessWidget {
  // Constructor for the MealsApp widget.
  const MealsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Disable the debug banner in the top-right corner.
      debugShowCheckedModeBanner: false,

      // Set the default theme for the app using the custom theme data.
      theme: theme,

      // The home screen of the app will be the TabsScreen widget.
      home: const TabsScreen(),
    );
  }
}

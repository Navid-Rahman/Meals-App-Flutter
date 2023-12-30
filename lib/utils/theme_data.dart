import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// The custom theme for the application.
final theme = ThemeData(
  // Enabling Material 3 design.
  useMaterial3: true,

  // Creating a custom color scheme with a dark brightness.
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 97, 180, 196),
  ),

  // Using Google Fonts Lato as the default text theme.
  textTheme: GoogleFonts.latoTextTheme(),
);

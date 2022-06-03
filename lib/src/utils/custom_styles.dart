import 'package:flutter/material.dart';

/// [CustomStyles] is a class extension on [TextTheme]
///
/// It supports to declare custom text styles with a getter function to
///
/// Implement anywhere from the project
extension CustomStyles on TextTheme {
  // Getter function for error textStyle
  TextStyle get error => const TextStyle(
        fontSize: 18,
        color: Colors.red,
        fontWeight: FontWeight.bold,
      );

  // Getter function for custom primary TextStyle
  TextStyle get primary => const TextStyle(
        fontSize: 14,
        color: Colors.blue,
        fontWeight: FontWeight.normal,
      );

  // Getter function for custom secondary TextStyle
  TextStyle get secondary => const TextStyle(
        fontSize: 14,
        color: Color.fromARGB(255, 54, 241, 244),
        fontWeight: FontWeight.normal,
      );
}

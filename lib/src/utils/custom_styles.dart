import 'package:flutter/material.dart';

extension CustomStyles on TextTheme {
  TextStyle get error => const TextStyle(
        fontSize: 18,
        color: Colors.red,
        fontWeight: FontWeight.bold,
      );
  TextStyle get primary => const TextStyle(
        fontSize: 14,
        color: Colors.blue,
        fontWeight: FontWeight.normal,
      );
  TextStyle get secondary => const TextStyle(
        fontSize: 14,
        color: Color.fromARGB(255, 54, 241, 244),
        fontWeight: FontWeight.normal,
      );
}

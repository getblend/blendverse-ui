import 'dart:math';
import 'package:flutter/material.dart';

/// dart extension on color to get set random background
/// colors from Colors.primaries

extension RandomColor on Color {
  Color random(int seed) {
    final colors = <Color>[
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.yellow,
      Colors.orange,
      Colors.purple,
      Colors.indigo,
    ];
    if (seed == 0) {
      return colors[Random().nextInt(colors.length)];
    }
    return colors[seed % colors.length];
  }
}

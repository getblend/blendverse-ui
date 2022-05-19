import 'package:flutter/material.dart';

/// A placeholder class that represents an entity or model.
class Story extends StatelessWidget {
  const Story(
    this.name,
    this.widgets, {
    Key? key,
  }) : super(key: key);

  final String name;

  /// List of widgets to be shown under this test.
  ///
  /// It is preferable to show a tests related to a single concept in a group
  final List<Widget> widgets;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [Text(name), ...widgets],
      ),
    );
  }
}

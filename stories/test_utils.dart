import 'package:flutter/material.dart';

/// Component used to display our stories in a neat wrappper.
///
/// USAGE:
/// {@tool snippet}
///
/// ```dart
/// Widget test() => const Story(
///       test: 'Basic configuration',
///       widgets: [
///         Text('Some text here...'),
///       ],
///     );
/// ```
/// {@end-tool}
class Story extends StatelessWidget {
  const Story({
    Key? key,
    required this.test,
    required this.widgets,
  }) : super(key: key);

  /// The name of the test being displayed
  final String test;

  /// List of widgets to be shown under this test.
  ///
  /// It is preferable to show a tests related to a single concept in a group
  final List<Widget> widgets;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: Text(
              test,
              // TODO(bk): switch to typography
              style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w200),
            ),
          ),
          Expanded(
            child: ListView(
              children: widgets,
            ),
          ),
        ],
      ),
    );
  }
}

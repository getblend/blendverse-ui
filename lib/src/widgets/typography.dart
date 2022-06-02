import 'package:flutter/material.dart';

/// Component used to display text.
///
/// Takes string [text] as required property
/// USAGE:
/// {@tool snippet}
///
/// Typography is used to display text on the screen in desired style which is
/// predifined in typography enum
///
/// ```dart
/// Typogrpahy(
///   'Lorem Ipsum'
/// )
/// ```
/// {@end-tool}
///
class Typography extends StatelessWidget {
  const Typography(
    this.text, {
    Key? key,
  }) : super(key: key);

  /// [text] is a required property for the text to displayed
  ///
  /// it takes a string variable
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
    );
  }
}

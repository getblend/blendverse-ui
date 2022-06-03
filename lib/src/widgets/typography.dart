import 'package:blendverse_ui/src/utils/custom_styles.dart';
import 'package:flutter/material.dart';

/// Component used to display text.
///
/// Takes string text as required property
/// USAGE:
/// {@tool snippet}
///
/// Typography is used to display text on the screen in desired style which is
/// predifined in typography enum
///
/// ```dart
/// Typogrpahy(
///   'Lorem Ipsum',
/// style: TypoStyle.h3,
/// )
/// ```
/// {@end-tool}
///

/// An enum that has a list of text styles available
enum TypoStyle {
  h1,
  h2,
  h3,
  h4,
  h5,
  h6,
  b1,
  b2,
  s1,
  s2,
  caption,
  err,
  primary,
  secondary,
}

class Typography extends StatelessWidget {
  const Typography(
    this.text, {
    Key? key,
    this.style = TypoStyle.h4,
  }) : super(key: key);

  /// [text] is a required property for the text to displayed
  ///
  /// it takes a string variable
  final String text;

  /// [style] is a property that takes [TypoStyle] enum as the values
  ///
  /// By default it takes TypoStyle.h4 as the style
  final TypoStyle style;

  /// [_style] is a private function for [Typography] class to dynamically
  ///
  /// assign the text theme context
  TextStyle? _style(BuildContext c) {
    switch (style) {
      case TypoStyle.h1:
        return Theme.of(c).textTheme.headline1;
      case TypoStyle.h2:
        return Theme.of(c).textTheme.headline2;
      case TypoStyle.h3:
        return Theme.of(c).textTheme.headline3;
      case TypoStyle.h4:
        return Theme.of(c).textTheme.headline4;
      case TypoStyle.h5:
        return Theme.of(c).textTheme.headline5;
      case TypoStyle.h6:
        return Theme.of(c).textTheme.headline6;
      case TypoStyle.b1:
        return Theme.of(c).textTheme.bodyText1;
      case TypoStyle.b2:
        return Theme.of(c).textTheme.bodyText2;
      case TypoStyle.s1:
        return Theme.of(c).textTheme.subtitle1;
      case TypoStyle.s2:
        return Theme.of(c).textTheme.subtitle2;
      case TypoStyle.caption:
        return Theme.of(c).textTheme.caption;
      case TypoStyle.err:
        return Theme.of(c).textTheme.error;
      case TypoStyle.primary:
        return Theme.of(c).textTheme.primary;
      case TypoStyle.secondary:
        return Theme.of(c).textTheme.secondary;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _style(context),
    );
  }
}

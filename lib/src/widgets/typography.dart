import 'package:blendverse_ui/src/utils/utils.dart';
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
enum BlendTextStyle {
  h1,
  h2,
  h3,
  h4,
  h5,
  h6,
  body,
  subtitle,
  caption,
  error,
  primary,
  secondary,
}

class Typography extends StatelessWidget {
  const Typography(
    this.text, {
    Key? key,
    this.style = BlendTextStyle.body,
    this.wrap,
    this.textAlign = TextAlign.left,
    this.overflow,
    this.maxLines,
  }) : super(key: key);

  /// [text] is a required property for the text to displayed
  ///
  /// it takes a string variable
  final String text;

  /// How the text should be aligned horizontally.
  final TextAlign? textAlign;

  /// Whether the text should break at soft line breaks.
  ///
  /// If false, the glyphs in the text will be positioned as if
  /// there was unlimited horizontal space.
  final bool? wrap;

  /// How visual overflow should be handled.
  ///
  /// If this is null [TextStyle.overflow] will be used, otherwise the value
  /// from the nearest [DefaultTextStyle] ancestor will be used.
  final TextOverflow? overflow;

  /// An optional maximum number of lines for the text to span, wrapping if
  /// necessary.
  /// If the text exceeds the given number of lines, it will be truncated
  /// according
  /// to [overflow].
  ///
  /// If this is 1, text will not wrap. Otherwise, text will be wrapped at the
  /// edge of the box.
  ///
  /// If this is null, but there is an ambient [DefaultTextStyle] that specifies
  /// an explicit number for its [DefaultTextStyle.maxLines], then the
  /// [DefaultTextStyle] value will take precedence. You can use a [RichText]
  /// widget directly to entirely override the [DefaultTextStyle].
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _style(context),
      textAlign: textAlign,
      softWrap: wrap,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  /// [style] is a property that takes [BlendTextStyle] enum as the values
  ///
  /// By default it takes TypoStyle.h4 as the style
  final BlendTextStyle style;

  /// [_style] is a private function for [Typography] class to dynamically
  ///
  /// assign the text theme context
  TextStyle? _style(BuildContext c) {
    switch (style) {
      case BlendTextStyle.h1:
        return Theme.of(c).textTheme.headline1;
      case BlendTextStyle.h2:
        return Theme.of(c).textTheme.headline2;
      case BlendTextStyle.h3:
        return Theme.of(c).textTheme.headline3;
      case BlendTextStyle.h4:
        return Theme.of(c).textTheme.headline4;
      case BlendTextStyle.h5:
        return Theme.of(c).textTheme.headline5;
      case BlendTextStyle.h6:
        return Theme.of(c).textTheme.headline6;
      case BlendTextStyle.body:
        return Theme.of(c).textTheme.bodyText1;
      case BlendTextStyle.subtitle:
        return Theme.of(c).textTheme.subtitle1;
      case BlendTextStyle.caption:
        return Theme.of(c).textTheme.caption;
      case BlendTextStyle.error:
        return Theme.of(c).textTheme.error;
      case BlendTextStyle.primary:
        return Theme.of(c).textTheme.primary;
      case BlendTextStyle.secondary:
        return Theme.of(c).textTheme.secondary;
    }
  }
}

import 'package:flutter/material.dart';

/// Component used to expand or collapse a text(description)
///
/// Takes string text as required property
/// USAGE:
/// {@tool snippet}
///
/// [Typography] is used to display text on the screen in desired style which is
/// predifined in typography enum
///
/// [AnimatedContainer] is used to animate the height of the container
/// during expansion and collapse
///
/// [GestureDetector] is used to handle the ontap functionality of the widget
///
/// [ExpandableText] must be used inside a [Row] having a [Expanded] widget as
/// children in it
///
/// ```dart
/// ExpandableText(
///   'Lorem Ipsum',
/// style: TypoStyle.h3,
///
/// )
/// ```
/// {@end-tool}
///
class ExpandableText extends StatefulWidget {
  const ExpandableText(
    this.text, {
    Key? key,
    this.maxLines,
    this.style,
  }) : super(key: key);

  /// [text] is a required property for the text to displayed
  ///
  /// it takes a string variable
  final String text;

  /// An optional maximum number of lines for the text to span, wrapping if
  /// necessary.
  /// If the text exceeds the given number of lines, it will be truncated
  /// according
  /// to [truncate].
  ///
  /// If this is 1, text will not wrap. Otherwise, text will be wrapped at the
  /// edge of the box.
  ///
  /// If this is null, but there is an ambient [DefaultTextStyle] that specifies
  /// an explicit number for its [DefaultTextStyle.maxLines], then the
  /// [DefaultTextStyle] value will take precedence. You can use a [RichText]
  /// widget directly to entirely override the [DefaultTextStyle].
  final int? maxLines;

  final TextStyle? style;

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  /// [isExpanded] is a state variable to check if the text is expanded
  ///
  /// by defalut the text is collapsed, flag = false
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        isExpanded = !isExpanded;
      }),
      child: Text(
        widget.text,
        maxLines: isExpanded ? null : widget.maxLines,
        softWrap: isExpanded,
        style: widget.style,
        overflow: isExpanded ? null : TextOverflow.fade,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

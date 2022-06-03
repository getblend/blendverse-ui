import 'package:blendverse_ui/widgets.dart' as text_typo show Typography;
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
  const ExpandableText(this.text, {Key? key}) : super(key: key);

  /// [text] is a required property for the text to displayed
  ///
  /// it takes a string variable
  final String text;

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  /// [flag] is a state variable to check if the text is expanded
  ///
  /// by defalut the text is collapsed, flag = false
  bool flag = false;

  /// [height] is the height of the [AnimatedContainer]
  ///
  /// Initialy it is set to 18 logical pixels
  int height = 18;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        if (flag) {
          flag = false;
          height = 18;
        } else {
          flag = true;
          height = 200;
        }
      }),
      child: AnimatedContainer(
        width: double.infinity,
        height: height.toDouble(),
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        child: ListView(
          children: [
            text_typo.Typography(
              !flag ? widget.text.substring(0, 100) : widget.text,
              overflow: flag ? null : TextOverflow.ellipsis,
              softWrap: flag,
            ),
          ],
        ),
      ),
    );
  }
}

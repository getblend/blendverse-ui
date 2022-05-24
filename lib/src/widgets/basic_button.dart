import 'package:blendverse_ui/widgets.dart';
import 'package:flutter/material.dart';

class BasicButton extends StatelessWidget {
  const BasicButton({
    Key? key,
    this.size = WidgetSize.sm,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  /// Controls the radius of the size property
  ///
  /// The argument [size] takes md = 32 as the default property
  final WidgetSize size;

  /// Controls the action that is performed when the button is pressed
  ///
  /// The onPressed is a required feild on the constructor
  final VoidCallback onPressed;

  /// Text is a custom feild that comes on the button
  ///
  /// Text is required feild on the constructor
  final String? text;

  /// Dart getter function [_width] to alter the size of the button
  int get _width {
    switch (size) {
      case WidgetSize.xs:
        return 50;
      case WidgetSize.sm:
        return 100;
      case WidgetSize.md:
        return 200;
      case WidgetSize.lg:
        return 300;
      case WidgetSize.xl:
        return 400;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      //TODO implement typography
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(fontWeight: FontWeight.bold),
        ),
        minimumSize: MaterialStateProperty.all<Size>(
          Size(_width.toDouble(), 40),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: Colors.transparent),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text!,
      ),
    );
  }
}

import 'package:blendverse_ui/src/utils/utils.dart';
import 'package:flutter/material.dart';

/// Component used to display icons
///
/// USAGE:
/// {@tool snippet}
///
/// [IconButton] takes [BlendIcons] enum as the required parameter
/// [data] property:
///
/// ```dart
/// BlendIcon(
///   data: BlendIcons.reaction,
///   sise: WidgetSize.lg,
/// )
/// ```
/// {@end-tool}

class IconButton extends StatelessWidget {
  const IconButton({
    Key? key,
    required this.data,
    this.color,
    this.size = WidgetSize.md,
    this.counter,
    this.onTap,
    this.onLongPress,
  }) : super(key: key);

  /// The [color] of the icon
  ///
  final Color? color;

  /// The [data] takes in [BlendIcons] class, which icon to load
  ///
  /// The arguments [data] must not be null.
  final IconData data;

  /// Controls the size of the icon
  ///
  /// The argument [size] takes md = 32 as the default property
  final WidgetSize size;

  /// Contains text to display info about the icon
  ///
  /// The argument [counter] takes count = '0.0' as the default property
  final String? counter;

  /// Contains function to perform onTap gesture on the icon
  ///
  /// The argument [onTap] takes a function and null as default
  final VoidCallback? onTap;

  /// Contains text to display info about the icon
  ///
  /// The argument [onLongPress] takes a function and null as deafult
  final VoidCallback? onLongPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          onLongPress: onLongPress,
          child: Icon(data, size: _size.toDouble(), color: color),
        ),
        _buildCounter(context),
      ],
    );
  }

  /// Dart getter function [_size] to alter the size of the icon
  int get _size {
    switch (size) {
      case WidgetSize.xs:
        return 24;
      case WidgetSize.sm:
        return 36;
      case WidgetSize.md:
        return 48;
      case WidgetSize.lg:
        return 72;
      case WidgetSize.xl:
        return 108;
    }
  }

  /// Dart getter function to check if the counter text is required
  Widget _buildCounter(BuildContext context) {
    if (counter != null) {
      return Text(
        counter.toString(),
        style: Theme.of(context).textTheme.caption,
        textAlign: TextAlign.center,
      );
    }
    return const SizedBox(height: 0);
  }
}

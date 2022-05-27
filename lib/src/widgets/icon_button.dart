import 'package:blendverse_ui/src/utils/utils.dart';
import 'package:flutter/widgets.dart';

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
    this.size = WidgetSize.md,
  }) : super(key: key);

  /// The [data] takes in [BlendIcons] class, which icon to load
  ///
  /// The arguments [data] must not be null.
  final IconData data;

  /// Controls the size of the icon
  ///
  /// The argument [size] takes md = 32 as the default property
  final WidgetSize size;

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

  @override
  Widget build(BuildContext context) {
    return Icon(
      data,
      size: _size.toDouble(),
    );
  }
}

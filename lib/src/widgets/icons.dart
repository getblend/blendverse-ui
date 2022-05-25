import 'package:blendverse_ui/src/utils/blend_icons.dart';
import 'package:blendverse_ui/src/utils/widget_size.dart';
import 'package:flutter/material.dart';

/// Component used to display icons
///
/// USAGE:
/// {@tool snippet}
///
/// [BlendIcon] takes [BlendIcons] enum as the required parameter
/// [blendIcons] property:
///
/// ```dart
/// BlendIcon(
///   blendIcons: BlendIcons.reaction,
///   sise: WidgetSize.lg,
/// )
/// ```
/// {@end-tool}

class BlendIcon extends StatelessWidget {
  const BlendIcon({
    Key? key,
    required this.blendIcons,
    this.size = WidgetSize.md,
  }) : super(key: key);

  /// The [blendIcons] takes in [BlendIcons] enum, which icon to load
  ///
  /// The arguments [blendIcons] must not be null.
  final BlendIcons blendIcons;

  /// Controls the size of the icon
  ///
  /// The argument [size] takes md = 32 as the default property
  final WidgetSize size;

  /// Dart getter function to get [IconData] from the enum [BlendIcons]
  IconData? get _getIcon {
    switch (blendIcons) {
      case BlendIcons.rection:
        return BIcons.favorite;
      case BlendIcons.comment:
        // TODO: Handle this case.
        break;
      case BlendIcons.share:
        // TODO: Handle this case.
        break;
    }
    return null;
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

  @override
  Widget build(BuildContext context) {
    return Icon(
      _getIcon,
      size: _size.toDouble(),
    );
  }
}

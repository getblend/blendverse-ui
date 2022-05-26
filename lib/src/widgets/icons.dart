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
    this.counter,
  }) : super(key: key);

  /// The [blendIcons] takes in [BlendIcons] enum, which icon to load
  ///
  /// The arguments [blendIcons] must not be null.
  final BlendIcons blendIcons;

  /// Controls the size of the icon
  ///
  /// The argument [size] takes md = 32 as the default property
  final WidgetSize size;

  /// Contains text to display info about the icon
  ///
  /// The argument [counter] takes count = '0.0' as the default property
  final String? counter;

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

  /// Dart getter function to check if the counter text is required
  Widget get _getText {
    if (counter != null) {
      return Text(
        counter.toString(),
        style: TextStyle(
          color: const Color.fromARGB(255, 168, 165, 165),
          fontWeight: FontWeight.bold,
          fontSize: _size.toDouble() / 3.5,
        ),
        textAlign: TextAlign.center,
      );
    }
    return const SizedBox(height: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          _getIcon,
          size: _size.toDouble(),
        ),
        _getText,
      ],
    );
  }
}

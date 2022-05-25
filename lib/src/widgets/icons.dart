import 'package:blendverse_ui/src/utils/blend_icons.dart';
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
///   blendIcons: BlendIcons.reaction
/// )
/// ```
/// {@end-tool}

class BlendIcon extends StatelessWidget {
  const BlendIcon({
    Key? key,
    required this.blendIcons,
  }) : super(key: key);

  /// The [blendIcons] takes in [BlendIcons] enum, which icon to load
  ///
  /// The arguments [blendIcons] must not be null.
  final BlendIcons blendIcons;

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

  @override
  Widget build(BuildContext context) {
    return Icon(_getIcon);
  }
}

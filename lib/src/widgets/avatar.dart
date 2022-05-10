import 'package:blendverse_ui/src/utils/size_emun.dart';
import 'package:flutter/material.dart';

/// Component used to display user avatar picture.
///
/// USAGE:
/// {@tool snippet}
///
/// If the avatar is to have an image, the image should be specified in the
/// [imageSrc] property:
///
/// ```dart
/// Avatar(
///   imageSrc: 'https://i.pravatar.cc/150?img=54'
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
///
/// If the avatar is to have a size, the image should be specified in the
/// [imageSize] property:
/// [imageSize] property takes in [WidgetSize] enum
///
/// ```dart
/// Avatar(
///   imageSrc: ScreenSize.md
/// )
/// ```
/// {@end-tool}
class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    required this.imageSrc,
    this.imageSize = WidgetSize.md,
  }) : super(key: key);

  /// The URL of the image from where to fetch the data.
  ///
  /// The arguments [imageSrc] must not be null.
  final String imageSrc;

  ///The display size customizable property
  ///
  ///The argument [imageSize] takes md = 32 as the default property
  ///
  final WidgetSize imageSize;

  /// dart getter function [_radius] to alter the size of the avatar
  double get _radius {
    switch (imageSize) {
      case WidgetSize.xs:
        return 16;
      case WidgetSize.sm:
        return 24;
      case WidgetSize.md:
        return 32;
      case WidgetSize.lg:
        return 48;
      case WidgetSize.xl:
        return 72;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      foregroundImage: NetworkImage(imageSrc),
      radius: _radius,
    );
  }
}

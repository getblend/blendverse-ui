import 'package:blendverse_ui/src/utils/widget_size.dart';
import 'package:flutter/material.dart';

/// Component used to display user avatar picture.
///
/// USAGE:
/// {@tool snippet}
///
/// If the avatar is to have an image, the image should be specified in the
/// [src] property:
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
/// [size] property:
/// [size] property takes in [WidgetSize] enum
///
/// ```dart
/// Avatar(
///   imageSrc: ScreenSize.md
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
///
/// If the avatar is to have a function that triggers on Tap,
/// The function/action needs to be passed through
/// [onTap] property:
/// [onTap] property can take (){} empty function if there is no action
///
/// ```dart
/// Avatar(
///   onTapHandler: ()=>{}
/// )
/// ```
/// {@end-tool}
class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    required this.src,
    this.size = WidgetSize.md,
    this.onTap,
  }) : super(key: key);

  /// The URL of the image from where to fetch the data.
  ///
  /// The arguments [src] must not be null.
  final String src;

  ///The display size customizable property
  ///
  ///The argument [size] takes md = 32 as the default property
  ///
  final WidgetSize size;

  ///The onTap function is a  customizable property
  ///
  ///The argument [onTap] takes a function that handles onTap gesture,
  ///cannot be null but can take an empty function
  ///
  final Function()? onTap;

  /// dart getter function [_radius] to alter the size of the avatar
  double get _radius {
    switch (size) {
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
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        backgroundImage: NetworkImage(src),
        radius: _radius,
      ),
    );
  }
}

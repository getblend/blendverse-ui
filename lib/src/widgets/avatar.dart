import 'package:blendverse_ui/src/utils/widget_size.dart';
import 'package:cached_network_image/cached_network_image.dart';
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

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    required this.src,
    this.size = WidgetSize.md,
  }) : super(key: key);

  /// The URL of the image from where to fetch the data.
  ///
  /// The arguments [src] must not be null.
  final String src;

  /// The display size customizable property
  ///
  /// The argument [size] takes md = 32 as the default property
  ///
  final WidgetSize size;

  /// dart getter function [_radius] to alter the size of the avatar
  int get _radius {
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
      child: CachedNetworkImage(
        // TODO(bk): change this to use the user_id instead
        cacheKey: 'IM',
        placeholder: (context, imageUrl) => Icon(
          Icons.person_outline,
          size: _radius.toDouble() * 1.5,
        ),
        imageUrl: src,
        maxHeightDiskCache: 72 * 2,
        maxWidthDiskCache: 72 * 2,
        fit: BoxFit.cover,
        imageBuilder: (context, imageProvider) => CircleAvatar(
          backgroundImage: imageProvider,
          radius: _radius.toDouble(),
        ),
      ),
    );
  }
}

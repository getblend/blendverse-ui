import 'dart:math';

import 'package:blendverse_ui/src/utils/widget_size.dart';
import 'package:flutter/material.dart';

/// Component used to display user avatar picture.
///
/// If [src] fails then [fallbackName] is used. If
/// [fallbackName] fails too, [_backgroundImage] is used.
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
/// If the avatar needs to have a fallback name,
/// the username needs to be passed on to [fallbackName]
///
///
/// ```dart
/// Avatar(
///   fallbackName: 'Lorem Ipsum'
/// )
/// ```
class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    required this.src,
    this.size = WidgetSize.md,
    this.fallbackName = '',
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

  /// The full name of the avatar/user
  ///
  /// The arguments [fallbackName] must not be null
  final String fallbackName;

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

  /// dart getter function [_clipName] to get the initials from username
  /// as a primary fallback
  String get _clipName {
    final trimName = fallbackName.trim();

    if (fallbackName.isNotEmpty && trimName.split(' ').length > 1) {
      return trimName.split(' ').map((l) => l[0]).take(2).join().toUpperCase();
    } else if (fallbackName.trim().split(' ').length == 1) {
      return trimName.characters.map((l) => l[0]).take(2).join().toUpperCase();
    } else {
      return '';
    }
  }

  ///dart getter function [_backgroundColor] to get set random background
  ///colors from Colors.primaries
  Color? get _backgroundColor {
    return Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }

  ///dart getter function [_backgroundImage] to get image only if username field
  ///is null as a secondary fallback
  ImageProvider? get _backgroundImage {
    if (_clipName.isEmpty) {
      return const NetworkImage(
        'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png',
      );
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: _radius,
      foregroundImage: NetworkImage(src),
      backgroundImage: _backgroundImage,
      backgroundColor: _backgroundColor,
      child: _clipName.isEmpty
          ? null
          : Text(
              _clipName,
              style: TextStyle(fontSize: _radius),
            ),
    );
  }
}

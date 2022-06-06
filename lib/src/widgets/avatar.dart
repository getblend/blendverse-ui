import 'package:blendverse_ui/src/utils/random_color.dart';
import 'package:blendverse_ui/src/utils/widget_size.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// Component used to display user avatar picture.
///
/// If [src] fails then [name] is used. If
/// [name] fails too, [_buildFallback] is used.
/// USAGE:
/// {@tool snippet}
///
/// If the avatar is to have an image, the image should be specified in the
/// [src] property:
///
/// ```dart
/// Avatar(
///   src: 'https://i.pravatar.cc/150?img=54'
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
///   size: WidgetSize.md
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
///
/// If the avatar needs to have a fallback name,
/// the username needs to be passed on to [name]
///
///
/// ```dart
/// Avatar(
///   name: 'Lorem Ipsum'
/// )
/// ```

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    required this.src,
    this.size = WidgetSize.md,
    this.name,
    this.onTap,
  }) : super(key: key);

  /// The URL of the image from where to fetch the data.
  ///
  /// The arguments [src] must not be null.
  final String src;

  /// Controls the radius of the size property
  ///
  /// The argument [size] takes md = 32 as the default property
  final WidgetSize size;

  /// The full name of the avatar/user
  final String? name;

  /// Contains function to perform onTap gesture on the avatar
  ///
  /// The argument [onTap] takes a function and null as default
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CachedNetworkImage(
        // TODO(bk): change this to use the user_id instead
        cacheKey: name,
        placeholder: (context, imageUrl) => _buildFallback(context),
        imageUrl: src,
        maxHeightDiskCache: 72 * 4,
        maxWidthDiskCache: 72 * 4,
        fit: BoxFit.cover,
        errorWidget: (context, url, dynamic error) => _buildFallback(context),
        imageBuilder: (context, imageProvider) => CircleAvatar(
          foregroundImage: imageProvider,
          radius: _radius.toDouble(),
        ),
      ),
    );
  }

  /// Dart getter function [_radius] to alter the size of the avatar
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

  /// Dart getter function [_initials] to get the initials from username
  /// As a primary fallback
  String? get _initials {
    if (name == null || name!.isEmpty) {
      return null;
    }

    final trimName = name!.trim();
    final words = trimName.split(RegExp(r'\s'));
    final wordCount = words.length;

    if (wordCount > 1) {
      return [
        words.first.characters.characterAt(0),
        words.last.characters.characterAt(0)
      ].join().toUpperCase();
    } else {
      return words.first.characters.characterAt(0).toUpperCase().toString();
    }
  }

  /// Dart getter function [_buildFallback] to get the background with
  /// The initials
  Widget _buildFallback(BuildContext context) {
    return CircleAvatar(
      radius: _radius.toDouble(),
      backgroundColor: RandomColor.random(seed: name?.length),
      child: _initials == null
          ? Icon(
              Icons.person_outline,
              size: _radius.toDouble(),
            )
          : Text(
              _initials.toString(),
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontSize: _radius.toDouble() / 1.4),
            ),
    );
  }
}

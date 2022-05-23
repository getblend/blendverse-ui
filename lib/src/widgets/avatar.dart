import 'package:blendverse_ui/src/utils/random_color.dart';
import 'package:blendverse_ui/src/utils/widget_size.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// Component used to display user avatar picture.
///
/// If [src] fails then [name] is used. If
/// [name] fails too, [_backgroundImage] is used.
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
/// the username needs to be passed on to [name]
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
    this.name,
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

  /// Dart getter function [_icon] to get the default icon if the http response
  /// Fails and there is no initials of the user
  Widget get _icon {
    return Container(
      padding: EdgeInsets.all(_radius.toDouble() / 3.4),
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      child: Icon(
        Icons.person_outline,
        size: _radius.toDouble() * 1.5,
      ),
    );
  }

  /// Dart getter function [_initialsIcon] to get the background with
  /// The initials
  Widget get _initialsIcon {
    return CircleAvatar(
      radius: _radius.toDouble(),
      backgroundColor: RandomColor(Colors.white).random(name?.length),
      child: Text(
        _initials.toString(),
        style: TextStyle(
          fontSize: _radius - 8,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CachedNetworkImage(
        // TODO(bk): change this to use the user_id instead
        cacheKey: name,
        placeholder: (context, imageUrl) => const CircularProgressIndicator(),
        imageUrl: src,
        maxHeightDiskCache: 72 * 2,
        maxWidthDiskCache: 72 * 2,
        fit: BoxFit.cover,

        errorWidget: (context, url, dynamic error) {
          if (_initials == null) {
            return _icon;
          }
          return _initialsIcon;
        },
        imageBuilder: (context, imageProvider) => CircleAvatar(
          foregroundImage: imageProvider,
          radius: _radius.toDouble(),
        ),
      ),
    );
  }
}

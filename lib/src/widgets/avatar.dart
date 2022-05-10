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
class Avatar extends StatelessWidget {
  const Avatar({Key? key, required this.imageSrc}) : super(key: key);

  /// The URL of the image from where to fetch the data.
  ///
  /// The arguments [imageSrc] must not be null.
  final String imageSrc;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      foregroundImage: NetworkImage(imageSrc),
      radius: 42,
    );
  }
}

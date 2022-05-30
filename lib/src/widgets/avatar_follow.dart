import 'package:blendverse_ui/widgets.dart';
import 'package:blendverse_ui/widgets.dart' as widget;
import 'package:flutter/material.dart';

/// Component used to display icons onto the Avatar
///
/// If [src] fails then [name] is used. If
/// [name] fails too, _buildFallback is used.
/// USAGE:
/// {@tool snippet}
///
/// If the avatar is to have an image, the image should be specified in the
/// [src] property:
///
/// ```dart
/// Avatar(
///   src: 'https://i.pravatar.cc/150?img=54',
///   size: WidgetSize.sm,
///   name: 'Thejasvee',
///   onTap: () => {print('followed')},
/// )
/// ```
/// {@end-tool}

class AvatarFollow extends StatelessWidget {
  const AvatarFollow({
    Key? key,
    required this.src,
    this.size = WidgetSize.md,
    this.name,
    this.onTap,
  }) : super(key: key);

  /// Uses [Avatar] widget with the follow icon and passes values
  /// down to avatar widget
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

  /// Dart getter function [_offsetSize] to alter offset of follow icon
  int get _offsetSize {
    switch (size) {
      case WidgetSize.xs:
        return -5;
      case WidgetSize.sm:
        return -10;
      case WidgetSize.md:
        return -15;
      case WidgetSize.lg:
        return -20;
      case WidgetSize.xl:
        return -25;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Avatar(
          src: src,
          name: name,
          size: size,
          onTap: onTap,
        ),
        Positioned(
          bottom: _offsetSize.toDouble(),
          child: widget.IconButton(
            data: BlendIcons.follow,
            color: Colors.pink,
            size: size,
          ),
        ),
      ],
    );
  }
}

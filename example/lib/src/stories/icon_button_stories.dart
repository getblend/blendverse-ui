// ignore_for_file: avoid_print

import 'package:blendverse_ui/widgets.dart';
import 'package:flutter/widgets.dart';

import '../story/story.dart';

Widget basic() => const Story(
      'Basic ',
      [
        IconButton(
          data: BlendIcons.favorite,
        ),
      ],
    );

Widget sizes() => const Story(
      'Available sizes',
      [
        IconButton(
          size: WidgetSize.xs,
          data: BlendIcons.favorite,
        ),
        IconButton(
          size: WidgetSize.sm,
          data: BlendIcons.favorite,
        ),
        IconButton(
          size: WidgetSize.md,
          data: BlendIcons.favorite,
        ),
        IconButton(
          size: WidgetSize.lg,
          data: BlendIcons.favorite,
        ),
        IconButton(
          size: WidgetSize.xl,
          data: BlendIcons.favorite,
        ),
      ],
    );

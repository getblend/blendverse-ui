// ignore_for_file: avoid_print

import 'package:blendverse_ui/widgets.dart';
import 'package:flutter/widgets.dart';
import '../story/story.dart';

Widget basic() => const Story(
      'Icons',
      [
        IconButton(
          data: BlendIcons.favorite,
        ),
        IconButton(
          data: BlendIcons.comment,
        ),
        IconButton(
          data: BlendIcons.share,
        ),
      ],
    );

Widget sizes() => Story(
      'Available sizes',
      [
        IconButton(
          size: WidgetSize.xs,
          data: BlendIcons.favorite,
          color: RandomColor.random(),
        ),
        IconButton(
          size: WidgetSize.sm,
          data: BlendIcons.favorite,
          color: RandomColor.random(),
        ),
        IconButton(
          size: WidgetSize.md,
          data: BlendIcons.favorite,
          color: RandomColor.random(),
        ),
        IconButton(
          size: WidgetSize.lg,
          data: BlendIcons.favorite,
          color: RandomColor.random(),
        ),
        IconButton(
          size: WidgetSize.xl,
          data: BlendIcons.favorite,
          color: RandomColor.random(),
        ),
      ],
    );

Widget counter() => const Story(
      'Counter',
      [
        IconButton(
          size: WidgetSize.xs,
          data: BlendIcons.favorite,
          counter: '12.6K',
        ),
      ],
    );

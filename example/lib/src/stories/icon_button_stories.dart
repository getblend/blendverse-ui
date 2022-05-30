// ignore_for_file: avoid_print

import 'package:blendverse_ui/widgets.dart';
import 'package:flutter/widgets.dart';

import '../story/story.dart';

Widget basic() => const Story(
      'Basic Reaction',
      [
        IconButton(
          data: BlendIcons.favorite,
        ),
      ],
    );

Widget sizes() => Story(
      'Available sizes',
      [
        IconButton(
          size: WidgetSize.xs,
          data: BlendIcons.favorite,
          color: RandomColor.random(null),
        ),
        IconButton(
          size: WidgetSize.sm,
          data: BlendIcons.favorite,
          color: RandomColor.random(null),
        ),
        IconButton(
          size: WidgetSize.md,
          data: BlendIcons.favorite,
          color: RandomColor.random(null),
        ),
        IconButton(
          size: WidgetSize.lg,
          data: BlendIcons.favorite,
          color: RandomColor.random(null),
        ),
        IconButton(
          size: WidgetSize.xl,
          data: BlendIcons.favorite,
          color: RandomColor.random(null),
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

Widget basicShare() => const Story(
      'Basic Share',
      [
        IconButton(
          data: BlendIcons.share,
        ),
      ],
    );

Widget shareSizes() => Story(
      'Available sizes',
      [
        IconButton(
          size: WidgetSize.xs,
          data: BlendIcons.share,
          color: RandomColor.random(null),
        ),
        IconButton(
          size: WidgetSize.sm,
          data: BlendIcons.share,
          color: RandomColor.random(null),
        ),
        IconButton(
          size: WidgetSize.md,
          data: BlendIcons.share,
          color: RandomColor.random(null),
        ),
        IconButton(
          size: WidgetSize.lg,
          data: BlendIcons.share,
          color: RandomColor.random(null),
        ),
        IconButton(
          size: WidgetSize.xl,
          data: BlendIcons.share,
          color: RandomColor.random(null),
        ),
      ],
    );

Widget shareCounter() => const Story(
      'Share Counter',
      [
        IconButton(
          size: WidgetSize.xs,
          data: BlendIcons.share,
          counter: '12.6K',
        ),
      ],
    );

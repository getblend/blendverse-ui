// ignore_for_file: avoid_print

import 'package:blendverse_ui/widgets.dart';
import 'package:flutter/material.dart';

import '../story/story.dart';

Widget basic() => Story(
      'Basic ',
      [
        BlendIcon(
          blendIcons: BlendIcons.rection,
          onTap: () => {print('onTap')},
          onLongPress: () => {print('onLongPress')},
        ),
      ],
    );

Widget sizes() => const Story(
      'Available sizes',
      [
        BlendIcon(
          size: WidgetSize.xs,
          blendIcons: BlendIcons.rection,
        ),
        BlendIcon(
          size: WidgetSize.sm,
          blendIcons: BlendIcons.rection,
        ),
        BlendIcon(
          size: WidgetSize.md,
          blendIcons: BlendIcons.rection,
        ),
        BlendIcon(
          size: WidgetSize.lg,
          blendIcons: BlendIcons.rection,
        ),
        BlendIcon(
          size: WidgetSize.xl,
          blendIcons: BlendIcons.rection,
        ),
      ],
    );

Widget text() => const Story(
      'Icon with Text ',
      [
        BlendIcon(
          blendIcons: BlendIcons.rection,
          counter: '0.0K',
        ),
      ],
    );

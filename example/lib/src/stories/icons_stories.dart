// ignore_for_file: avoid_print

import 'package:blendverse_ui/widgets.dart';
import 'package:flutter/material.dart';

import '../story/story.dart';

Widget basic() => const Story(
      'Basic ',
      [
        BlendIcon(
          blendIcons: BlendIcons.rection,
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

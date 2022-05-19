// ignore_for_file: avoid_print

import 'package:blendverse_ui/widgets.dart';
import 'package:flutter/material.dart';

import '../story/story.dart';

Widget basic() => const Story(
      'Basic ',
      [
        Avatar(
          src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
        ),
      ],
    );

Widget sizes() => const Story(
      'Available sizes',
      [
        Avatar(
          src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
          size: WidgetSize.xs,
        ),
        Avatar(
          src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
          size: WidgetSize.sm,
        ),
        Avatar(
          src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
          // ignore: avoid_redundant_argument_values
          size: WidgetSize.md,
        ),
        Avatar(
          src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
          size: WidgetSize.lg,
        ),
        Avatar(
          src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
          size: WidgetSize.xl,
        )
      ],
    );

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
          name: 'Thejas',
        ),
        Avatar(
          src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
          size: WidgetSize.sm,
          name: 'Thejasvee Murthy',
        ),
        Avatar(
          src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
          size: WidgetSize.md,
          name: 'Vivek Janardhan',
        ),
        Avatar(
          src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
          // ignore: avoid_redundant_argument_values
          size: WidgetSize.lg,
          name: 'Kiran ML',
        ),
        Avatar(
          src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
          size: WidgetSize.xl,
          name: 'Bhargav',
        ),
      ],
    );

Widget fallbacks() => const Story(
      'Fallbacks',
      [
        Avatar(
          src: '',
          size: WidgetSize.lg,
          name: '',
        ),
        Avatar(
          src: '',
          size: WidgetSize.sm,
          name: 'T',
        ),
        Avatar(
          src: '',
          name: 'Vivek Janardha',
        ),
      ],
    );

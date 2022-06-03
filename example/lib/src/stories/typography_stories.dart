// ignore_for_file: avoid_print

import 'package:blendverse_ui/widgets.dart';
import 'package:flutter/widgets.dart';

import '../story/story.dart';

Widget basic() => const Story(
      'Basic Typography',
      [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Typography('Text'),
        ),
      ],
    );

Widget styles() => const Story(
      'Available Styles',
      [
        Typography(
          'Heading 1',
          style: TypoStyle.h1,
        ),
        Typography(
          'Heading 2',
          style: TypoStyle.h2,
        ),
        Typography(
          'Heading 3',
          style: TypoStyle.h3,
        ),
        Typography(
          'Heading 4',
          style: TypoStyle.h4,
        ),
        Typography(
          'Heading 5',
          style: TypoStyle.h5,
        ),
        Typography(
          'Heading 6',
          style: TypoStyle.h6,
        ),
        Typography(
          'Body 1',
          style: TypoStyle.b1,
        ),
        Typography(
          'Body2',
          style: TypoStyle.b2,
        ),
        Typography(
          'Subtitle 1',
          style: TypoStyle.s1,
        ),
        Typography(
          'Subtitle 2',
          style: TypoStyle.s2,
        ),
        Typography(
          'Caption',
          style: TypoStyle.caption,
        ),
        Typography(
          'Error',
          style: TypoStyle.err,
        ),
        Typography(
          'Primary',
          style: TypoStyle.primary,
        ),
        Typography(
          'Secondary',
          style: TypoStyle.secondary,
        ),
      ],
    );

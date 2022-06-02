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

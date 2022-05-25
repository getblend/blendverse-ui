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

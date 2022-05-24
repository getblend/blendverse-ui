// ignore_for_file: avoid_print

import 'package:blendverse_ui/widgets.dart';
import 'package:blendverse_ui_example/src/story/story.dart';
import 'package:flutter/material.dart';

Widget basic() => Story(
      'Basic ',
      [
        BasicButton(
          text: 'Click Me',
          onPressed: () => {print('object')},
        ),
      ],
    );

Widget sizes() => Story(
      'Button Sizes',
      [
        Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          BasicButton(
            size: WidgetSize.xs,
            onPressed: () {},
            text: 'Click',
          ),
          BasicButton(
            onPressed: () {},
            text: 'Click',
          ),
          BasicButton(
            size: WidgetSize.md,
            onPressed: () {},
            text: 'Click',
          ),
          BasicButton(
            size: WidgetSize.lg,
            onPressed: () {},
            text: 'Click',
          ),
          BasicButton(
            size: WidgetSize.xl,
            onPressed: () {},
            text: 'Click',
          ),
        ]),
      ],
    );

import 'package:blendverse_ui/widgets.dart';
import 'package:flutter/material.dart';

Widget avatars() => Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Avatar(
          src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
          fallbackName: '',
        ),
        Avatar(
          src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
          size: WidgetSize.xs,
          fallbackName: 'Thejasvee Murthy',
        ),
        Avatar(
          src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
          size: WidgetSize.sm,
          fallbackName: 'Vivek Janardhan',
        ),
        Avatar(
          src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
          // ignore: avoid_redundant_argument_values
          size: WidgetSize.md,
          fallbackName: 'Kiran ',
        ),
        Avatar(
          src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
          size: WidgetSize.lg,
          fallbackName: 'Bhargav',
        ),
        Avatar(
          src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
          size: WidgetSize.xl,
          fallbackName: 'Vivek Janardhan',
        )
      ],
    );

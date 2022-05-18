// ignore_for_file: avoid_print

import 'package:blendverse_ui/widgets.dart';
import 'package:flutter/material.dart';

Widget avatars() => Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Avatar(
          src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
          onTap: () {
            print('Tapped on avatar');
          },
        ),
        Avatar(
          src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
          size: WidgetSize.xs,
          onTap: () {
            print('Tapped on avatar');
          },
        ),
        Avatar(
          src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
          size: WidgetSize.sm,
          onTap: () {
            print('Tapped on avatar');
          },
        ),
        Avatar(
          src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
          // ignore: avoid_redundant_argument_values
          size: WidgetSize.md,
          onTap: () {
            print('Tapped on avatar');
          },
        ),
        Avatar(
          src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
          size: WidgetSize.lg,
          onTap: () {
            print('test');
          },
        ),
        Avatar(
          src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
          size: WidgetSize.xl,
          onTap: () {
            print('test');
          },
        )
      ],
    );

// ignore_for_file: avoid_print

import 'package:blendverse_ui/widgets.dart';
import 'package:flutter/material.dart';

Widget avatars() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                'Default Avatar',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            const Avatar(
              src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
            ),
            const Text(
              'Avatar Sizes',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Avatar(
              src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
              size: WidgetSize.xs,
            ),
            const Avatar(
              src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
              size: WidgetSize.sm,
            ),
            const Avatar(
              src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
              // ignore: avoid_redundant_argument_values
              size: WidgetSize.md,
            ),
            const Avatar(
              src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
              size: WidgetSize.lg,
            ),
            const Avatar(
              src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
              size: WidgetSize.xl,
            ),
            const Text(
              'Avatar onTap',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Avatar(
              src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
              onTap: () {
                print('On Tap/Pressed Avatar');
              },
            )
          ],
        ),
      ],
    );

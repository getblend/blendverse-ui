import 'package:blendverse_ui/widgets.dart';
import 'package:flutter/material.dart';

Widget avatars() => Column(
      children: [
        const Text(
          'Avatar Fallback',
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Avatar(
              src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
              size: WidgetSize.sm,
              fallbackName: '',
            ),
            Avatar(
              src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
              size: WidgetSize.sm,
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
              size: WidgetSize.sm,
              fallbackName: 'Kiran ',
            ),
            Avatar(
              src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
              size: WidgetSize.sm,
              fallbackName: 'Bhargav',
            ),
            Avatar(
              src: 'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg',
              size: WidgetSize.sm,
              fallbackName: 'Vivek Janardhan',
            ),
          ],
        ),
      ],
    );

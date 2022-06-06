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
          style: BlendTextStyle.h1,
        ),
        Typography(
          'Heading 2',
          style: BlendTextStyle.h2,
        ),
        Typography(
          'Heading 3',
          style: BlendTextStyle.h3,
        ),
        Typography(
          'Heading 4',
          style: BlendTextStyle.h4,
        ),
        Typography(
          'Heading 5',
          style: BlendTextStyle.h5,
        ),
        Typography(
          'Heading 6',
          style: BlendTextStyle.h6,
        ),
        Typography(
          'Body 1',
          style: BlendTextStyle.body,
        ),
        Typography(
          'Subtitle 1',
          style: BlendTextStyle.subtitle,
        ),
        Typography(
          'Caption',
          style: BlendTextStyle.caption,
        ),
        Typography(
          'Error',
          style: BlendTextStyle.error,
        ),
        Typography(
          'Primary',
          style: BlendTextStyle.primary,
        ),
        Typography(
          'Secondary',
          style: BlendTextStyle.secondary,
        ),
      ],
    );

Widget expandable() => Story(
      'Expandables Typography',
      [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Expanded(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: ExpandableText(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem IpsumLorem Ipsum is simply dummy text of the printing and typesetting industry. \n . \n . \n . \n . \n .\n Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text \n ever since the 1500s, the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry.  \n . \n . \n . \n . \n .\n #Lorem #Ipsum #is #simply #dummy #text #of #the #printing #and #typesetting #industry. #Lorem #Ipsum #has #been #the #industry\'s #standard #dummy #text #ever #since #the #1500s, #the #release #of #Letraset #sheets #containing #Lorem #Ipsum #passages, #and #more #recently #with #desktop #publishing #software #like #Aldus #PageMaker #including #versions #of #Lorem #Ipsum.',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );

import 'package:blendverse_ui_example/src/stories/all.dart';
import 'package:flutter/material.dart';

/// Component used to display our stories in a neat wrappper.
///
/// USAGE:
/// {@tool snippet}
///
/// ```dart
/// Widget test() => const StoryDetails(
///       Story('Basic', [
///         Text('Some text here...'),
///       ]),
///     );
/// ```
/// {@end-tool}
class StoryDetails extends StatelessWidget {
  const StoryDetails({Key? key}) : super(key: key);

  static const routeName = '/story_details';

  @override
  Widget build(BuildContext context) {
    final String name = ModalRoute.of(context)!.settings.arguments as String;

    final widgets = allStories[name]!;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          name,
        ),
      ),
      body: Center(
        child: ListView(
          children: widgets,
        ),
      ),
    );
  }
}

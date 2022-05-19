import 'package:blendverse_ui_example/src/stories/all.dart';
import 'package:blendverse_ui_example/src/story/index.dart';
import 'package:flutter/material.dart';

import '../settings/settings_view.dart';

/// Displays a list of Stories.
class StoryCollection extends StatelessWidget {
  const StoryCollection({
    Key? key,
  }) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    var widgets = allStories.keys.toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stories'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigate to the settings page. If the user leaves and returns
              // to the app after it has been killed while running in the
              // background, the navigation stack is restored.
              Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
          ),
        ],
      ),

      // To work with lists that may contain a large number of items, it’s best
      // to use the ListView.builder constructor.
      //
      // In contrast to the default ListView constructor, which requires
      // building all Widgets up front, the ListView.builder constructor lazily
      // builds Widgets as they’re scrolled into view.
      body: ListView.builder(
        // Providing a restorationId allows the ListView to restore the
        // scroll position when a user leaves and returns to the app after it
        // has been killed while running in the background.
        restorationId: 'storiesCollectionView',
        itemCount: widgets.length,
        itemBuilder: (BuildContext context, int index) {
          final item = widgets[index];
          return ListTile(
              title: Text(item),
              onTap: () {
                // Navigate to the details page. If the user leaves and returns to
                // the app after it has been killed while running in the
                // background, the navigation stack is restored.
                Navigator.restorablePushNamed(context, StoryDetails.routeName,
                    arguments: item);
              });
        },
      ),
    );
  }
}

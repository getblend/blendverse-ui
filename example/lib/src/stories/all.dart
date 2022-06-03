import 'avatar_stories.dart' as avatar;
import 'icon_button_stories.dart' as icon_buttons;
import 'typography_stories.dart' as typography;

var allStories = {
  'Avatar': [
    avatar.basic(),
    avatar.sizes(),
    avatar.fallbacks(),
  ],
  'Icon Button': [
    icon_buttons.basic(),
    icon_buttons.sizes(),
    icon_buttons.counter()
  ],
  'Typography': [
    typography.basic(),
    typography.expandable(),
    typography.styles(),
  ]
};

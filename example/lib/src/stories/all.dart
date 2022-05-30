import 'avatar_stories.dart' as avatar;
import 'icon_button_stories.dart' as icon_buttons;

var allStories = {
  'Avatar': [avatar.basic(), avatar.sizes(), avatar.fallbacks()],
  'Icon Button': [
    icon_buttons.basic(),
    icon_buttons.sizes(),
    icon_buttons.counter(),
    icon_buttons.basicComment(),
    icon_buttons.commentSizes(),
    icon_buttons.commentCounter()
  ]
};

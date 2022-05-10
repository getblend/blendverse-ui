import 'package:flutter/material.dart';

void main() {
  // testWidgets('Should display a circle avatar with the passed network image',
  //     (WidgetTester tester) async {
  //   // Build widget imported from story
  //   await tester.pumpWidget(materialize(stories.avatar));

  //   // Verify that the widget is created and the underlying structure is correct
  //   expect(find.byElementType(CircleAvatar), findsOneWidget);

  //   // Verify that the network image is set correctly
  //   final finder = find.byElementType(CircleAvatar);
  //   final circleAvatar = tester.firstWidget<CircleAvatar>(finder);
  //   expect(
  //     circleAvatar.backgroundImage,
  //     const NetworkImage(
  //         'https://miro.medium.com/max/250/0*0fClPmIScV5pTLoE.jpg'),
  //   );
  // });
}

MaterialApp materialize(Widget Function() story) => MaterialApp(
      home: Scaffold(body: story()),
    );

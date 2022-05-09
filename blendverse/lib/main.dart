import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import 'package:components/avatar.dart';

void main() {
  runApp(const MyApp());
}

//Storybook pulgin for using multiple devices preview
final _plugins = initializePlugins(
  contentsSidePanel: true,
  knobsSidePanel: true,
  initialDeviceFrameData: DeviceFrameData(
    device: Devices.ios.iPhone13,
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blendverse',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'BLENDVERSE'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Storybook(
        initialStory: 'Components/Avatar',
        plugins: _plugins,
        stories: [
          //Story for Avatar component
          Story(
            name: 'Components/Avatar',
            description: 'Story for Avatar component',
            builder: (context) => Avatar(
              //testing for different images
              bgImageProvider: context.knobs.options(
                label: "Avatar Images",
                initial: const NetworkImage(
                    "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg"),
                description: 'Background color of the avatar.',
                options: const [
                  Option(
                    label: 'Size 20',
                    value: NetworkImage(
                        "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg&fm=jpg"),
                    description: 'Blue color',
                  ),
                  Option(
                    label: 'Size 30',
                    value: NetworkImage(
                        "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?cs=srgb&dl=pexels-mohamed-abdelghaffar-771742.jpg&fm=jpg"),
                    description: 'Green color',
                  ),
                ],
              ),
            ),
          ),
        ]);
  }
}
